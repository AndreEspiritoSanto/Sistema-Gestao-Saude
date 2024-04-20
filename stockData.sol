// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract stockData {
  
  //Definir a estrutura de dados para armazenar a informação
  struct Stock {
    uint256 stockID;
    uint256 institutionID;
    uint256 medicineID;
    uint256 quantity;
    string validDate;
  }

  // Mapear para armazenar a informação mapeada para o ID como chave
  mapping(uint256 => Stock) public stocks;

  // Contador para guardar registo dos IDs
  uint256 private nextStockId = 1;

  // Função para arquivar informação e assignar um ID
  function addStock(uint256 _stockID, uint256 _institutionID, uint256 _medicineID, uint256 _quantity, string memory _validDate ) public {
    stocks[_stockID] = Stock( _stockID, _institutionID, _medicineID, _quantity, _validDate);
  }

  // Função para recuperar informação pelo ID
  function getStock(uint256 _stockID) public view returns (Stock memory) {
    return stocks[_stockID];
  }
}
