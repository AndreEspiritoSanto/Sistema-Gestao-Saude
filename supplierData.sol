// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract supplierData {
  
  //Definir a estrutura de dados para armazenar a informação
  struct Supplier {
    uint256 supplierId;
    string name;
    string Address;
    string contact;
    string email;
    string website;
    uint256 nif;
    string extraParameters;
    //string primaryContact;
    //string emailPrimaryContact;
    //string paymentMethod;
    //string bankInfo;
  }

  // Mapear para armazenar a informação mapeada para o ID como chave
  mapping(uint256 => Supplier) public suppliers;

  // Contador para guardar registo dos IDs
  uint256 private nextSupplierId = 1;

  // Função para arquivar informação e assignar um ID
  function addSupplier(uint256 _supplierId, string memory _name, string memory _Address, string memory _contact, string memory _email, string memory _website, uint256 _nif, string memory _extraParameters ) public {
    suppliers[_supplierId] = Supplier( _supplierId,  _name,  _Address,  _contact,  _email,  _website,  _nif,  _extraParameters);
  }

  // Função para recuperar informação pelo ID
  function getSupplier(uint256 _supplierId) public view returns (Supplier memory) {
    return suppliers[_supplierId];
  }
}
