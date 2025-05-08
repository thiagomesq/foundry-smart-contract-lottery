# Foundry Smart Contract Lottery

## Quickstart

Follow the steps below to initialize this project after cloning the repository:

1. Clone the repository:
    ```bash
    git clone https://github.com/your-username/foundry-smart-contract-lottery.git
    cd foundry-smart-contract-lottery
    ```

2. Install dependencies:
    ```bash
    forge install
    ```

3. Compile the contracts:
    ```bash
    forge build
    ```

4. Run the tests:
    ```bash
    forge test
    ```

5. (Optional) Set up environment variables for blockchain network integration.

## Summary

The **Foundry Smart Contract Lottery** project is a decentralized application (dApp) that implements a lottery using smart contracts. Developed with the Foundry framework, the project explores fundamental blockchain concepts such as random number generation, smart contract security, and integration with Ethereum networks. The goal is to create a transparent and reliable lottery where participants can enter, and a winner is selected fairly.

## Description

### Deployment Addresses

Sepolia Testnet: [0xa99B3C5A8C41486644767a849971DF94E10c9556](https://sepolia.etherscan.io/address/0xa99b3c5a8c41486644767a849971df94e10c9556)

### Motivation
The idea behind this project is to demonstrate how smart contracts can be used to create secure and transparent decentralized applications. The lottery is a classic example that highlights the challenges of random number generation and the need to prevent manipulation.

### Tools and Technologies
- **Foundry**: Framework for developing, testing, and deploying smart contracts.
- **Solidity**: Programming language for smart contracts.
- **Chainlink VRF**: Service for generating verifiable random numbers.
- **Chainlink Automation**: Service for automating smart contract functions.
- **Hardhat (optional)**: For integration with additional tools.
- **Ethers.js**: Library for blockchain interaction.

### Project Structure
The project is organized as follows:
- `src/`: Contains the smart contracts, including the main lottery contract.
- `test/`: Test scripts to validate the functionality of the contracts.
- `script/`: Scripts for deploying and interacting with the contracts.
- `foundry.toml`: Foundry configuration file.

### Development
1. **Planning**: Defined the requirements for the smart contract, such as:
    - Participant entry.
    - Winner selection.
    - Prize distribution.

2. **Contract Implementation**:
    - Created the main contract in Solidity.
    - Used Chainlink VRF to ensure secure random number generation.
    - Added events to log entries and winners.
    - Implemented Chainlink Automation to run the lottery automatically.

3. **Testing**:
    - Wrote unit and integration tests using Foundry.
    - Simulated scenarios like multiple participants and failures in random number generation.

4. **Deployment**:
    - Configured scripts to deploy the contract on test networks like Sepolia.
    - Tested interaction with the contract using scripts and interfaces.

5. **Documentation**:
    - Created this README to guide developers.
    - Added detailed comments in the code.

### Next Steps
- Implement a frontend interface to facilitate interaction with the lottery.
- Add support for multiple blockchain networks.
- Improve security and optimize the contract for gas costs.

This project is an excellent introduction to smart contract development and the use of modern tools in the Ethereum ecosystem.

## Quickstart

Siga os passos abaixo para inicializar este projeto após clonar o repositório:

1. Clone o repositório:
    ```bash
    git clone https://github.com/seu-usuario/foundry-smart-contract-lottery.git
    cd foundry-smart-contract-lottery
    ```

2. Instale as dependências:
    ```bash
    forge install
    ```

3. Compile os contratos:
    ```bash
    forge build
    ```

4. Execute os testes:
    ```bash
    forge test
    ```

5. (Opcional) Configure variáveis de ambiente para integração com redes blockchain.

## Resumo

O projeto **Foundry Smart Contract Lottery** é uma aplicação descentralizada (dApp) que implementa uma loteria utilizando contratos inteligentes. Desenvolvido com o framework Foundry, o projeto explora conceitos fundamentais de blockchain, como geração de números aleatórios, segurança em contratos inteligentes e integração com redes Ethereum. O objetivo é criar uma loteria transparente e confiável, onde os participantes podem entrar e um vencedor é selecionado de forma justa.

## Descrição

### Endereços de deploy

Sepolia Testnet: [0xa99B3C5A8C41486644767a849971DF94E10c9556](https://sepolia.etherscan.io/address/0xa99b3c5a8c41486644767a849971df94e10c9556)

### Motivação
A ideia por trás deste projeto é demonstrar como contratos inteligentes podem ser usados para criar aplicações descentralizadas seguras e transparentes. A loteria é um exemplo clássico que destaca os desafios de geração de números aleatórios e a necessidade de evitar manipulações.

### Ferramentas e Tecnologias
- **Foundry**: Framework para desenvolvimento, teste e implantação de contratos inteligentes.
- **Solidity**: Linguagem de programação para contratos inteligentes.
- **Chainlink VRF**: Serviço para geração de números aleatórios verificáveis.
- **Chainlink Automation**: Serviço para automação de funções de contratos inteligentes.
- **Hardhat (opcional)**: Para integração com ferramentas adicionais.
- **Ethers.js**: Biblioteca para interação com a blockchain.

### Estrutura do Projeto
O projeto é organizado da seguinte forma:
- `src/`: Contém os contratos inteligentes, incluindo o contrato principal da loteria.
- `test/`: Scripts de teste para validar a funcionalidade dos contratos.
- `script/`: Scripts para implantação e interação com os contratos.
- `foundry.toml`: Arquivo de configuração do Foundry.

### Desenvolvimento
1. **Planejamento**: Definimos os requisitos do contrato inteligente, como:
    - Entrada de participantes.
    - Seleção de um vencedor.
    - Distribuição do prêmio.

2. **Implementação do Contrato**:
    - Criamos o contrato principal em Solidity.
    - Utilizamos o Chainlink VRF para garantir a geração de números aleatórios seguros.
    - Adicionamos eventos para registrar entradas e vencedores.
    - Implementamos o Chainlink Automation para rodar o sorteio de forma automática.

3. **Testes**:
    - Escrevemos testes unitários e de integração utilizando o Foundry.
    - Simulamos cenários como múltiplos participantes e falhas na geração de números aleatórios.

4. **Implantação**:
    - Configuramos scripts para implantar o contrato em redes de teste como Sepolia.
    - Testamos a interação com o contrato usando scripts e interfaces.

5. **Documentação**:
    - Criamos este README para guiar os desenvolvedores.
    - Adicionamos comentários detalhados no código.

### Próximos Passos
- Implementar uma interface frontend para facilitar a interação com a loteria.
- Adicionar suporte a múltiplas redes blockchain.
- Melhorar a segurança e otimizar o contrato para custos de gas.

Este projeto é uma excelente introdução ao desenvolvimento de contratos inteligentes e ao uso de ferramentas modernas no ecossistema Ethereum.