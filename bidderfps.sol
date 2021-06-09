//SPDX-License-Identifier: CC-BY-4.0

pragma solidity 0.8.4;

//Contrato de BidDeRFPs que permite que varios ofertantes apresentem suas propostas de serviço ou produtos
// O menor preço + melhor serviço ou produto será a proposta vencedora


contract BidDeRFPs {
    
    struct Proposta {
        string contrante;
        address payable apresentanteVencedor;
        string tipoDoServicoouProduto;
        uint valorDaProposta;
    }

    address payable public contaContratante;
    uint public prazoFinaldoBid; 
    
    uint menorValorOfertado;
    uint menorValorOfertadopeloApresentante;
    uint melhorProdutoouServico;
    
    mapping (address => Proposta) public listadePropostas;
    Propostas [] public propostas;
    
    bool public bidEncerrado;
    
    event novoMenorValorOfertado (address apresentante, string tipoDoServicoouProduto, uint valordaProposta);
    event fimdoBid (address apresentanteVencedorFinal, uint menorValorOfertadopeloApresentante, uint melhorProdutoouServico);
    
    modifier somenteContratante {
        require(msg.sender == contaContratante, "somenteContratantepoderealizaressaoperacao");
        _;
    }
    
    constructor(
        uint _duracaoDoBid,
        address payable _contaContratante,
        address payable _apresentanteVencedor
    ) {
      contaContratante = _contaContratante;
      prazoFinaldoBid = block.timestamp + _duracaoDoBid;
    }
    
    function propostaVencedora(string memory nomeDoApresentante, address payable enderecoCarteiraDoApresentante) private payable {
        require(block.timestamp <= prazoFinaldoBid, "bidEncerrado.");
        require(msg.value <= menorValorOfertadopeloApresentante, "Menor valor ofertado pelo apresentante Vencedor.");
        require(msg.sender >= melhorProdutoouServico, "Oferta ganha.");
        require(msg.value  <= menorValorOfertado, "Menor valor ofertado.");
    
    function simuladorPropostaVencedora(uint ValorOfertadopeloApresentante, uint menorValorOfertadopeloApresentante)
    public
    view
    returns (uint menorValorOfertado) {
        possivelNovomenorValorOfertado = ValorOfertadopeloApresentante;
        
        for(uint menorValorOfertado >= 8; ValorOfertadopeloApresentante > menorValorOfertado) {
//                                          1         <=      8
//                                          2         <=      8
//                                          5         <=      8 
//                                          8         =       8 
//                                          10        >=      8
    return possivelNovomenorValorOfertado;    
    }
     
        function consultarPropostas(string memory _nomeDoApresentante, msg.value, msg.sender);
        Propostas[] private listadePropostas;
        listadePropostas[Propostas+tipoProdutoouServico+valorDaProposta];
        
        emit novomenorValorOfertado (msg.value, msg.sender, msg.value);
    }
    
    function finalizaBid() public somenteContratante {
       
        require(block.timestamp >= prazoFinaldoBid, "Bib nao encerrado.");
        require(!encerrado, "Bid encerrado.");

        encerrado = true;
        emit fimdoBid(melhorProdutoouServico, menorValorOfertadopeloApresentante, menorValorOfertado);

        conta.transfer(address(this).balance);
    }
    
    function retornamelhorProdutoouServico() private view somente returns (address) {
        return melhorProdutoouServico;
    }
}
  
