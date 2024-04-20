// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract medicineData {
  
  //Definir a estrutura de dados para armazenar a informação
  struct Medicine {
    uint256 medicineID;
    string name;
    string cid;
    string physicalForm;
    string presentation;
    string indications;
    string contraIndications;
    uint256 recommendedPrice;
     }

  // Mapear para armazenar a informação mapeada para o ID como chave
  mapping(uint256 => Medicine) public medicines;

  // Contador para guardar registo dos IDs
  uint256 private nextmedicineId = 1;

  // Função para arquivar informação e assignar um ID
  function addMedicine(uint256 _medicineID, string memory _name, string memory _cid, string memory _physicalForm, string memory _presentation, string memory _indications, string memory _contraIndications, uint256 _recommendedPrice ) public {
    medicines[ _medicineID] = Medicine( _medicineID, _name, _cid, _physicalForm, _presentation, _indications, _contraIndications, _recommendedPrice);
  }

  // Função para recuperar informação pelo ID
  function getMedicine(uint256 _medicineID) public view returns (Medicine memory) {
    return medicines[_medicineID];
  }
}
