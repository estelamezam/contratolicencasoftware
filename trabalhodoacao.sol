//SPDX-License-Identifier: MIT

pragma solidity 0.8.6;
//Contrato de doação com criação de token

contract Donate {

    struct Donation {
        string doador;
        string donatario;
        string addressdoacao;
        uint donationValue;
    }

    address public owner;
  
    Donation[] public donations;

    constructor() {
        owner = msg.sender;
    }

    function registerDonation(
        string memory paramDoador,
        string memory paramDonatario,
        string memory paramAddressDoacao,
        uint paramDonationValue
    ) external returns (bool) {
        require(msg.sender == owner, "Only the owner can register a donation contract");
        Donation memory newDonationRecord = Donation(paramDoador, paramDonatario, paramAddressDoacao, paramDonationValue);
        donations.push(newDonationRecord);
        return true;
    }    

}
