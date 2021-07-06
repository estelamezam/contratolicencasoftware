//SPDX-License-Identifier: MIT

pragma solidity 0.8.6;

contract Donation {

//Contrato de doação com criação de toke

    struct Donation {
        string doador;
        string donatario;
        string addressdoacao;
        uint donationValue;
    }

    address public owner;
  
    Donate[] public Donations;

    constructor() {
        owner = msg.sender;
    }

    function registerDOnation(
        string memory paramDoador,
        string memory paramDonatario,
        string memory paramAddressDoacao,
        uint paramDonationValue
    ) external returns (bool) {
        require(msg.sender == owner, "Only the owner can register a donation contract");
        Donation memory newDonationRecord = Donation(paramDoador, paramDonatario, paramAddressDoacao, paramDoador);
        rentals.push(newDonationRecord);
        return true;
    }    

}
