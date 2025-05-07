# Foundry Smart Contract Lottery

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

### Motivação
A ideia por trás deste projeto é demonstrar como contratos inteligentes podem ser usados para criar aplicações descentralizadas seguras e transparentes. A loteria é um exemplo clássico que destaca os desafios de geração de números aleatórios e a necessidade de evitar manipulações.

### Ferramentas e Tecnologias
- **Foundry**: Framework para desenvolvimento, teste e implantação de contratos inteligentes.
- **Solidity**: Linguagem de programação para contratos inteligentes.
- **Chainlink VRF**: Serviço para geração de números aleatórios verificáveis.
- **Hardhat (opcional)**: Para integração com ferramentas adicionais.
- **Ethers.js**: Biblioteca para interação com a blockchain.

### Estrutura do Projeto
O projeto é organizado da seguinte forma:
- `contracts/`: Contém os contratos inteligentes, incluindo o contrato principal da loteria.
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