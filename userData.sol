// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserData {
  
  //Definir a estrutura de dados para armazenar a informação
  struct User {
    uint256 userId;
    string name;
    uint256 nationalID;
    uint256 socialsecurityID;
    string contact;
    string Address;
    string DateofBirth;
    string extraParameters;
      //string email;
      //uint256 fiscalID;
      //string gender;
      //uint256 healthID;
      //string healthPlan;
      //uint256 institutionID;
      //string medicalSpeciality;
      //string userType;
  }

  // Mapear para armazenar a informação mapeada para o ID como chave
  mapping(uint256 => User) public users;

  // Contador para guardar registo dos IDs
  uint256 private nextUserId = 1;

  // Função para arquivar informação e assignar um ID
  function addUser(uint256 _userId, string memory _name, uint256 _nationalID, uint256 _socialsecurityID, string memory _contact, string memory _Address, string memory _DateofBirth, string memory _extraParameters ) public {
    users[_userId] = User(_userId, _name, _nationalID, _socialsecurityID, _contact, _Address, _DateofBirth, _extraParameters);
  }

  // Função para recuperar informação pelo ID
  function getUser(uint256 _userId) public view returns (User memory) {
    return users[_userId];
  }
}
