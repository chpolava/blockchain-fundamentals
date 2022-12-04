// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;
//used the already defined datatypes 
//what if we need a custom data type
//structure is a custom data type
//employee record
//emp_id - Numeric
//emp_name = string
//emp_address = alpha
//phone = numeric
//salary = numeric
//department = string
//job title = string
//social status = bool 


contract Test1{
    struct Person{
        uint age;
        string name;
    } 
    //mapping = Index 
    //increment - contract counter increment keeps on adding the value
    //+1 +1 
    struct Employee{
        string emp_name;
        uint emp_salary;
        bool status;
        string job_title;
    }
    //if-else = intelligence
    //structure = custom datatype
    //modifier = protection against mallicious attacks
    //mapping = Index which can be associated with a number
    //

    //Object is required to access the structure variable 
    //created an object from the structure
    
    Person p1;
    Employee e1;
    //int b;
    constructor(){
        p1.age = 12;
        p1.name ="Sam";

        e1.emp_name = "Sunil K";
        e1.emp_salary = 1234567;
        e1.status = true;
        e1.job_title = "Head of the Department";

    }
    
    function getEmployee() public view returns(Employee memory)
    {
        return e1;
    }

    function getPerson() public view returns(Person memory)
    {
        return p1;
    }
    
    function setEmployee(string memory _name,uint _salary,bool _status,string memory _title) public {
        e1.emp_name = _name;
        e1.emp_salary = _salary;
        e1.status = _status;
        e1.job_title = _title;
    }

    function setPerson(uint _age,string memory _name) public {
        p1.age = _age;
        p1.name = _name;
    } 
    /*string emp_name;
        uint emp_salary;
        bool status;
        string job_title;*/
}