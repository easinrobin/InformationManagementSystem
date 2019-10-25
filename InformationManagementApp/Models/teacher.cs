using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InformationManagementApp.Models
{
    public class teacher
    {

        public int TeacherId { get; set; }
        public string TeacherName { get; set; }
        public int TeacherAge { get; set; }
        public string TeacherRegNo { get; set; }
        public string TeacherMobileNo { get; set; }
        public string TeacherEmail { get; set; }
        public string TeacherAddress { get; set; }

        public teacher(string teacherName, int teacherAge, string teacherRegNo, string teacherMobileNo, string teacherEmail, string teacherAddress)
        {
            eacherName = tacherName;
            tacherAge = tacherAge;
            tacherRegNo = tacherRegNo;
            tacherMobileNo = tacherMobileNo;
            tacherEmail = tacherEmail;
            tacherAddress = tacherAddress;
        }
    }
}