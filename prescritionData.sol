// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PrescriptionData {
  
  //Definir a estrutura de dados para armazenar a informação
  struct Prescription {
    uint256 prescriptionId;
    uint256 institutionID;
    uint256 userID;
    string prescriptionDate;    
    string medicineList;
    string posology;
  }

  // Mapear para armazenar a informação mapeada para o ID como chave
  mapping(uint256 => Prescription) public prescriptions;

  // Contador para guardar registo dos IDs
  uint256 private nextprescriptionId = 1;

  // Função para arquivar informação e assignar um ID
  function addPrescription(uint256 _prescriptionId, uint256 _institutionID, uint256 _userID, string memory _prescriptionDate, string memory _medicineList, string memory _posology ) public {
    prescriptions[_prescriptionId] = Prescription(_prescriptionId, _institutionID, _userID, _prescriptionDate, _medicineList, _posology);
  }

  // Função para recuperar informação pelo ID
  function getPrescription(uint256 _prescriptionId) public view returns (Prescription memory) {
    return prescriptions[_prescriptionId];
  }
}
