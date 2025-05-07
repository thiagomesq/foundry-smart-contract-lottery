// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Test, console} from "forge-std/Test.sol";
import {DeployRaffle} from "script/DeployRaffle.s.sol";
import {CreateSubscription, FundSubscription, AddConsumer} from "script/Interactions.s.sol";
import {HelperConfig} from "script/HelperConfig.s.sol";
import {VRFCoordinatorV2_5Mock} from "@chainlink/src/vrf/mocks/VRFCoordinatorV2_5Mock.sol";
import {LinkToken} from "test/mocks/LinkToken.sol";
import {Raffle} from "src/Raffle.sol";

contract InteractionsTest is Test {
    Raffle public raffle;
    HelperConfig public helperConfig;

    HelperConfig.NetworkConfig public config;

    uint256 public constant STARTING_PLAYER_BALANCE = 10 ether;

    function setUp() public {
        helperConfig = new HelperConfig();
        config = helperConfig.getConfig();

        vm.deal(config.account, STARTING_PLAYER_BALANCE);
    }

    function testSubscriptionCreationFundingAndAddConsumer() public {
        // Create a new subscription
        CreateSubscription createSubscription = new CreateSubscription();
        address vrfCoordinator;
        (config.subscriptionId, vrfCoordinator) =
            createSubscription.createSubscription(config.vrfCoordinator, config.account);
        (uint96 initialSubscriptionBalance,,,,) =
            VRFCoordinatorV2_5Mock(vrfCoordinator).getSubscription(config.subscriptionId);

        // Fund the subscription
        FundSubscription fundSubscription = new FundSubscription();
        fundSubscription.fundSubscription(vrfCoordinator, config.subscriptionId, config.link, config.account);
        (uint96 finalSubscriptionBalance,,,,) =
            VRFCoordinatorV2_5Mock(vrfCoordinator).getSubscription(config.subscriptionId);

        // Deploy the Raffle contract
        DeployRaffle deployer = new DeployRaffle();
        raffle = deployer.addContract(config);

        // Add consumer to the subscription
        AddConsumer addConsumer = new AddConsumer();
        addConsumer.addConsumer(address(raffle), vrfCoordinator, config.subscriptionId, config.account);
        (,,,, address[] memory consumers) =
            VRFCoordinatorV2_5Mock(vrfCoordinator).getSubscription(config.subscriptionId);

        assert(config.subscriptionId != 0);
        assertEq(vrfCoordinator, config.vrfCoordinator);
        assert(finalSubscriptionBalance == initialSubscriptionBalance + 10 ether);
        assert(consumers.length == 1);
        assert(consumers[0] == address(raffle));
    }
}
