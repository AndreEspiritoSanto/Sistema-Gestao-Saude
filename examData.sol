// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExamData {
  
  //Definir a estrutura de dados para armazenar a informação
  struct Exam {
    uint256 examId;
    uint256 institutionID;
    string startTime;
    string endTime;
    uint256 patientID;
    uint256 medicID;
    string medicalSpeciality;
    string extraParameters;
    //string examtype;
    //string description;
    //string result;
    //uinst256 price;
  }

  // Mapear para armazenar a informação mapeada para o ID como chave
  mapping(uint256 => Exam) public exams;

  // Contador para guardar registo dos IDs
  uint256 private nextExamId = 1;

  // Função para arquivar informação e assignar um ID
  function addExam(uint256 _examId, uint256 _institutionID, string memory _startTime, string memory _endTime, uint256 _patientID, uint256 _medicID,  string memory _medicalSpeciality,  string memory _extraParameters ) public {
    exams[_examId] = Exam(_examId, _institutionID, _startTime, _endTime, _patientID, _medicID, _medicalSpeciality, _extraParameters);
  }

  // Função para recuperar informação pelo ID
  function getExam(uint256 _examId) public view returns (Exam memory) {
    return exams[_examId];
  }
}
