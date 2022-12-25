// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.0;

contract MedicalRecordSystem {

    struct MedicalBills {
        uint id;
        string date;
        uint amount;
        string medicineName;
        string dose;
        string instructions;
    }

    struct Patient {
        uint id;
        string name;
        uint age;
        string medicalInformation;
        string insurance;
        string immunizations;
    }

    struct Doctor {
        uint id;
        string name;
        string dailyVisitingHours;
    }

    Patient[] private patients;
    uint private id = 0;
    Doctor[] private doctors;
    MedicalBills[] private medbills;

    function createPatient(string memory _name, uint _age) public returns(uint) {
        id = id + 1;
        patients.push(Patient(id, _name, _age, "Diagnosed with Cancer", "Y", "N"));
        return id;
    }

    function getPatient(uint _id) public view returns(Patient memory patient){
        for (uint i = 0; i < patients.length; i++) {
            if (patients[i].id == _id) {
                return patients[i];
            }
        }
    }

    function getMedBills() public returns(MedicalBills memory bill) {
        medbills.push(MedicalBills(1, "22-12-2022", 50, "Dolo", "650 mg", "After food"));
        return medbills[0];
    }

    function getDoctorVisitingHours(uint _id) public returns(Doctor memory doctor){
        doctors.push(Doctor(1, "Dr. Kiran", "9 AM - 6 PM"));
        doctors.push(Doctor(2, "Dr. Sujatha", "9 AM - 6 PM"));
        doctors.push(Doctor(3, "Dr. Komala", "9 AM - 6 PM"));

        for (uint i = 0; i < doctors.length; i++) {
            if (doctors[i].id == _id) {
                return doctors[i];
            }
        }
    }
}