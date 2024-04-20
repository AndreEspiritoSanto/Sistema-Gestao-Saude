// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract instutitionData {
  
  //Definir a estrutura de dados para armazenar a informação
  struct Institution {
    uint256 institutionId;
    string name;
    string Address;
    string contact;
    string email;
    string website;
    uint256 nif;
    string institutionType;
  }

  // Mapear para armazenar a informação mapeada para o ID como chave
  mapping(uint256 => Institution) public institutions;

  // Contador para guardar registo dos IDs
  uint256 private nextInstitutionId = 1;

  // Função para arquivar informação e assignar um ID
  function addInstitution(uint256 _institutionId, string memory _name, string memory _Address, string memory _contact, string memory _email, string memory _website, uint256 _nif, string memory _institutionType ) public {
    institutions[_institutionId] = Institution( _institutionId,  _name,  _Address,  _contact,  _email,  _website,  _nif,  _institutionType);
  }

  // Função para recuperar informação pelo ID
  function getInstitution(uint256 _institutionId) public view returns (Institution memory) {
    return institutions[_institutionId];
  }
}
