// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract invoiceData {
  
  //Definir a estrutura de dados para armazenar a informação
  struct Invoice {
    uint256 invoiceId;
    uint256 institutionID;
    uint256 userID;
    string emissionDate;    
    string limitDate;  
    uint256 totalValue;  
    string medicineList;
    string quantityList;
  }

  // Mapear para armazenar a informação mapeada para o ID como chave
  mapping(uint256 => Invoice) public invoices;

  // Contador para guardar registo dos IDs
  uint256 private nextInvoiceId = 1;

  // Função para arquivar informação e assignar um ID
  function addInvoice(uint256 _invoiceId, uint256 _institutionID, uint256 _userID, string memory _emissionDate, string memory _limitDate, uint256 _totalValue, string memory _medicineList, string memory _quantityList ) public {
    invoices[_invoiceId] = Invoice(_invoiceId, _institutionID, _userID, _emissionDate, _limitDate, _totalValue, _medicineList, _quantityList);
  }

  // Função para recuperar informação pelo ID
  function getInvoice(uint256 _invoiceId) public view returns (Invoice memory) {
    return invoices[_invoiceId];
  }
}
