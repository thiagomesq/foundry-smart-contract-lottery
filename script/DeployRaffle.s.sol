// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Script, console} from "forge-std/Script.sol";
import {Raffle} from "src/Raffle.sol";
import {HelperConfig} from "./HelperConfig.s.sol";
import {CreateSubscription, FundSubscription, AddConsumer} from "./Interactions.s.sol";

contract DeployRaffle is Script {
    function run() public {
        deployContract();
    }

    function deployContract() public returns (Raffle, HelperConfig) {
        HelperConfig helperConfig = new HelperConfig();
        HelperConfig.NetworkConfig memory config = helperConfig.getConfig();

        if (config.subscriptionId == 0) {
            // Create a new subscription
            CreateSubscription createSubscription = new CreateSubscription();
            (config.subscriptionId, config.vrfCoordinator) =
                createSubscription.createSubscription(config.vrfCoordinator, config.account);

            // Fund the subscription
            FundSubscription fundSubscription = new FundSubscription();
            fundSubscription.fundSubscription(config.vrfCoordinator, config.subscriptionId, config.link, config.account);
        }

        vm.startBroadcast(config.account);
        Raffle raffle = new Raffle({
            entranceFee: config.entranceFee,
            interval: config.interval,
            vrfCoordinator: config.vrfCoordinator,
            gasLane: config.gasLane,
            subscriptionId: config.subscriptionId,
            callbackGasLimit: config.callbackGasLimit
        });
        vm.stopBroadcast();

        AddConsumer addConsumer = new AddConsumer();
        addConsumer.addConsumer(address(raffle), config.vrfCoordinator, config.subscriptionId, config.account);

        console.log("Raffle contract deployed at: ", address(raffle));
        console.log("Subscription ID: ", config.subscriptionId);
        console.log("VRF Coordinator: ", config.vrfCoordinator);

        return (raffle, helperConfig);
    }

    function addContract(HelperConfig.NetworkConfig memory config) public returns (Raffle) {
        vm.startBroadcast(config.account);
        Raffle raffle = new Raffle({
            entranceFee: config.entranceFee,
            interval: config.interval,
            vrfCoordinator: config.vrfCoordinator,
            gasLane: config.gasLane,
            subscriptionId: config.subscriptionId,
            callbackGasLimit: config.callbackGasLimit
        });
        vm.stopBroadcast();

        console.log("Raffle contract deployed at: ", address(raffle));

        return raffle;
    }
}
