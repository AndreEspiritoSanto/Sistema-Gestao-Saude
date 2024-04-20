// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract orderData {
  
  //Definir a estrutura de dados para armazenar a informação
  struct Order {
    uint256 orderId;
    uint256 institutionID;
    uint256 userID;
    string orderDate;    
    string medicineList;
    string quantityList;
  }

  // Mapear para armazenar a informação mapeada para o ID como chave
  mapping(uint256 => Order) public orders;

  // Contador para guardar registo dos IDs
  uint256 private nextOrderId = 1;

  // Função para arquivar informação e assignar um ID
  function addOrder(uint256 _orderId, uint256 _institutionID, uint256 _userID, string memory _orderDate, string memory _medicineList, string memory _quantityList ) public {
    orders[_orderId] = Order(_orderId, _institutionID, _userID, _orderDate, _medicineList, _quantityList);
  }

  // Função para recuperar informação pelo ID
  function getOrder(uint256 _orderId) public view returns (Order memory) {
    return orders[_orderId];
  }
}
