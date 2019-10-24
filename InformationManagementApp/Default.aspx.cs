using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.Configuration;
using System.Web.UI;
using InformationManagementApp.Models;

namespace InformationManagementApp
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowAllStudent();
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            string name = inputStudentName.Value;
            int age = Convert.ToInt32(inputStudentAge.Value);
            string regNo = inputStudentRegNo.Value;
            string mobileNo = inputStudentMobileNo.Value;
            string email = inputStudentEmail.Value;
            string address = inputStudentAddress.Value;

            Student student = new Student(name, age, regNo, mobileNo, email, address);

            string connectionString = WebConfigurationManager.ConnectionStrings["IMDB"].ConnectionString;

            var rowEffect = InsertStudentInfo(connectionString, student);

            if (rowEffect > 0)
            {
                msgLabel.Text = String.Empty;
                msgLabel.Text = "Data saved successfully";
                msgLabel.ForeColor = Color.Green;
                ClearAllFields();
            }
            else
            {
                msgLabel.Text = String.Empty;
                msgLabel.Text = "Failed to save";
                msgLabel.ForeColor = Color.Red;
                ClearAllFields();
            }
        }

        private int InsertStudentInfo(string connectionString, Student student)
        {
            SqlConnection connection = new SqlConnection(connectionString);

            string querry = "INSERT INTO [Student_tbl](StudentName, StudentAge, StudentRegNo, " +
                            "StudentMobile, StudentEmailAddress, StudentAddress)" +
                            "VALUES('" +student.StudentName+ "'," +student.StudentAge+ ",'" +student.StudentAge+ "','" +student.StudentMobileNo+ "','" +student.StudentEmail+ "','" +student.StudentAddress+ "')";
            SqlCommand command = new SqlCommand(querry, connection);
            connection.Open();
            var rowEffect = command.ExecuteNonQuery();
            connection.Close();
            return rowEffect;
        }

        private void ShowAllStudent()
        {
            List<Student> studentList = new List<Student>();
            string connectionString = @"Server = LAPTOP-GSAHG1KQ; Database = InformationManagementDB; Integrated Security = true; ";
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT * FROM Student_tbl";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                int studentId = (int) reader["StudentId"];
                string studentName = reader["StudentName"].ToString();
                int studentAge = (int) reader["StudentAge"];
                string studentRegNo = reader["StudentRegNo"].ToString();
                string mobile = reader["StudentMobile"].ToString();
                string email = reader["StudentEmailAddress"].ToString();
                string address = reader["StudentAddress"].ToString();

                Student student = new Student(studentName, studentAge, studentRegNo, mobile, email, address);
                student.StudentId = studentId;
                studentList.Add(student);
            }
            reader.Close();
            connection.Close();
            studedntListGridView.DataSource = studentList;
            studedntListGridView.DataBind();
        }

        private void ClearAllFields()
        {
            inputStudentName.Value = String.Empty;
            inputStudentAge.Value = String.Empty;
            inputStudentRegNo.Value = String.Empty;
            inputStudentEmail.Value = String.Empty;
            inputStudentMobileNo.Value = String.Empty;
            inputStudentAddress.Value = String.Empty;
        }
    }
}