// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AppointmentData {
  
  //Definir a estrutura de dados para armazenar a informação
  struct Appointment {
    uint256 appointmentId;
    uint256 patientID;
    uint256 medicID;
    uint256 institutionID;
    string medicalSpeciality;
    string startTime;
    string endTime;
    string extraParameters;
    //string appointmentExams;
    //string diagnostic;
    //string motive;
    //string observations;
    //string symptoms;
    //string treatment;
    //uint256 prescriptionID;
  }

  // Mapear para armazenar a informação mapeada para o ID como chave
  mapping(uint256 => Appointment) public appointments;

  // Contador para guardar registo dos IDs
  uint256 private nextAppointmentId = 1;

  // Função para arquivar informação e assignar um ID
  function addAppointment(uint256 _appointmentId, uint256 _patientID, uint256 _medicID, uint256 _institutionID, string memory _medicalSpeciality, string memory _startTime, string memory _endTime, string memory _extraParameters ) public {
    appointments[_appointmentId] = Appointment(_appointmentId, _patientID, _medicID, _institutionID, _medicalSpeciality, _startTime, _endTime, _extraParameters);
  }

  // Função para recuperar informação pelo ID
  function getAppointment(uint256 _AppointmentId) public view returns (Appointment memory) {
    return appointments[_AppointmentId];
  }
}
