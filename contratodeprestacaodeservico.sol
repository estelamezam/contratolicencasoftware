//SPDX-License-Identifier: CC-BY-4.0
pragma solidity 0.8.4;

contract PrestacaoDeServicoDeManutencao    {
      string public contratadaempresademanutencao;
      string public contratante;
      uint public valordoservico;
      uint private constant atrasoMaximoPrestacaoServico = 30;
      uint private constant percentualMaximoDeMulta = 3;
      
      constructor () {
          contratadaempresademanutencao = "ZecaPrestacaoServicosLtda";
          contratante = "GrandeEmpresaLtda";
          valordoservico = 3000;
      }
      
      function verificaSePercentualMaximoDeMultaEValido(uint percentualAlmejado)
      public
      pure
      returns (bool resposta) {
          if (percentualAlmejado <= percentualMaximoDeMulta) {
              return true;
    
          } else {
              return false;
          }
      }
      
      function simuladoratrasoMaximoPrestacaoServico(uint diasRestantes)
      public
      pure
      returns (uint possivelAtrasoMaximo) {
          possivelAtrasoMaximo = atrasoMaximoPrestacaoServico;
          
          for(uint diasAcumulados = 5; diasAcumulados    <= diasRestantes; diasAcumulados  =  diasAcumulados  + 5) {
//                                           5           <=   30
//                                           10          <=   30
//                                           15          <=   30
//                                           20          <=   30
//                                           25          <=   30
//                                           30          <=   30
//                                           35          <=   30
          
            possivelAtrasoMaximo = possivelAtrasoMaximo - diasRestantes;
//                        30   <--      30              -   5
//                        30   <--      30              -   10
//                        30   <--      30              -   15
          }
          
          return possivelAtrasoMaximo;
    }
}
