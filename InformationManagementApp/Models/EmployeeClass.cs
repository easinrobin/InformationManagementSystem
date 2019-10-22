using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InformationManagementApp.Models
{
    public class EmployeeClass
    {
        public EmployeeClass(string employeeName, int employeeAge, string employeeMobile, int employeeExperience, string employeeDegree, int employeeSalary, string employeeAddress) : this()
        {
            EmployeeName = employeeName;
            EmployeeAge = employeeAge;
            EmployeeMobile = employeeMobile;
            EmployeeExperience = employeeExperience;
            EmployeeDegree = employeeDegree;
            EmployeeSalary = employeeSalary;
            EmployeeAddress = employeeAddress;
        }


        public EmployeeClass()
        {
        }

        public int EmployeeId { get; set; }
        public string EmployeeName { get; set; }
        public int EmployeeAge { get; set; }
        public string EmployeeMobile { get; set; }
        public int EmployeeExperience { get; set; }
        public string EmployeeDegree { get; set; }
        public int EmployeeSalary { get; set; }
        public string EmployeeAddress { get; set; }
        
    }
}