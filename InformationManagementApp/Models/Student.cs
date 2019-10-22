using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InformationManagementApp.Models
{
    public class Student
    {
        public int StudentId { get; set; }
        public string StudentName { get; set; }
        public int StudentAge { get; set; }
        public string StudentRegNo { get; set; }
        public string StudentMobileNo { get; set; }
        public string StudentEmail { get; set; }
        public string StudentAddress { get; set; }

        public Student(string studentName, int studentAge, string studentRegNo, string studentMobileNo, string studentEmail, string studentAddress)
        {
            StudentName = studentName;
            StudentAge = studentAge;
            StudentRegNo = studentRegNo;
            StudentMobileNo = studentMobileNo;
            StudentEmail = studentEmail;
            StudentAddress = studentAddress;
        }
    }
}