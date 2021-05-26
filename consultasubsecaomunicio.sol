//SPDX-License-Identifier: CC-BY-4.0

pragma solidity 0.8.4;

// Permite consultar a subseção competente após ser informado o municipio onde reside a perte autora

contract ConsultaSubsecaoMunicipio {
    
    // mapeamento de municipio para subsecao
    mapping (string => string) public competencias;
    // etiqueta ou chave ou key -> nome do municipio
    //e dentro do item sera armazenado string (texto)
    // crato -> juazeiro do norte
    // juazeiro do norte -> juazeiro do norte
    // assare -> juazeiro do norte
    // crateus -> crateus
    // fortaleza -> fortaleza
    // jeriquoaquara -> fortaleza
    
    mapping (uint => string) public regioes;
    // 1 -> DF 
    // 2 -> RJ e ES 
    // 3 -> SP e MS 
    // 4 -> PR, SC, RS 
    // 5 -> PE, AL, PB, RN, CE 
    
    string [] public leis;
    
    constructor () {
        regioes [1] = "DF";
        regioes [2] = "RJ e ES";
        regioes [3] = "SP e MS";
        regioes [4] = "PR, SC, RS";
        regioes [5] = "PE, AL, PB, RN, CE";
        leis.push("lei de vargas"); // 0
        leis.push("Marco Civil da Internet"); // 1 
    }
    
    function incluirLei(string memory _nomeDaLei) public {
        leis.push(_nomeDaLei);
    }
    
    function incluirMunicipiosEmSubsecao(string memory _municipio, string memory _subsecao) public {
        competencias[_municipio] = _subsecao;
    }
    
    function consultarSubsecaoDoMunicipio(string memory _municipio) public view returns (string memory) {
        return competencias[_municipio];
    }

}
