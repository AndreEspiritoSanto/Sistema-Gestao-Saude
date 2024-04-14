// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SaleData {
  
  //Definir a estrutura de dados para armazenar a informação
  struct Sale {
    uint256 saleId;
    uint256 institutionID;
    uint256 userID;
    string saleDate;    
    string medicineList;
    string quantityList;
  }

  // Mapear para armazenar a informação mapeada para o ID como chave
  mapping(uint256 => Sale) public sales;

  // Contador para guardar registo dos IDs
  uint256 private nextSaleId = 1;

  // Função para arquivar informação e assignar um ID
  function addSale(uint256 _saleId, uint256 _institutionID, uint256 _userID, string memory _saleDate, string memory _medicineList, string memory _quantityList ) public {
    sales[_saleId] = Sale(_saleId, _institutionID, _userID, _saleDate, _medicineList, _quantityList);
  }

  // Função para recuperar informação pelo ID
  function getSale(uint256 _saleId) public view returns (Sale memory) {
    return sales[_saleId];
  }
}
