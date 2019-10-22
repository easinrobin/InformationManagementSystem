using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.UI;
using InformationManagementApp.Models;

namespace InformationManagementApp
{
    public partial class Employee : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowAllEmployee();
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            string name = inputEmployeeName.Value;
            int age = Convert.ToInt32(inputEmployeeAge.Value);
            string mobile = inputEmployeeMobile.Value;
            int experience = Convert.ToInt32(inputEmployeeExperience.Value);
            string degree = inputEmployeeDegree.Value;
            int salary = Convert.ToInt32(inputEmployeeSalary.Value);
            string address = inputEmployeeAddress.Value;
            
            EmployeeClass employee = new EmployeeClass(name, age, mobile, experience, degree, salary, address);

            string connectionString = @"Server = LAPTOP-GSAHG1KQ; Database = InformationManagementDB; Integrated Security = true; ";

            int rowEffect = InsertEmployeeInfo(connectionString, employee);

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

        private int InsertEmployeeInfo(string connectionString, EmployeeClass employee)
        {
            SqlConnection connection =new SqlConnection(connectionString);

            string query = "INSERT INTO [Employee_tbl](EmployeeName, EmployeeAge, EmployeeMobile, " +
                           "EmployeeExperience, EmployeeDegree, EmployeeSalary, EmployeeAddress)" +
                           "VALUES('" + employee.EmployeeName + "'," + employee.EmployeeAge + ",'" + employee.EmployeeMobile + "','" + employee.EmployeeExperience + "','" + employee.EmployeeDegree + "','" + employee.EmployeeSalary +"','" + employee.EmployeeAddress + "')";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int rowEffect = command.ExecuteNonQuery();
            connection.Close();
            return rowEffect;
        }

        public void ShowAllEmployee()
        {
            List<EmployeeClass> employeeList = new List<EmployeeClass>();
            string connectionString = @"Server = LAPTOP-GSAHG1KQ; Database = InformationManagementDB; Integrated Security = true; ";

            SqlConnection connection = new SqlConnection(connectionString);

            string query = "SELECT * FROM Employee_tbl";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                int employeeId = (int) reader["EmployeeId"];
                string employeeName = reader["EmployeeName"].ToString();
                int employeeAge = (int) reader["EmployeeAge"];
                string employeeMobile = reader["EmployeeMobile"].ToString();
                int employeeExperience = (int) reader["EmployeeExperience"];
                string employeeDegree = reader["EmployeeDegree"].ToString();
                int employeeSalary = (int) reader["EmployeeSalary"];
                string employeeAddress = reader["EmployeeAddress"].ToString();

                EmployeeClass employee = new EmployeeClass(employeeName, employeeAge, employeeMobile, employeeExperience, employeeDegree, employeeSalary, employeeAddress);
                employee.EmployeeId = employeeId;
                employeeList.Add(employee);
            }
            reader.Close();
            connection.Close();
            employeeGridView.DataSource = employeeList;
            employeeGridView.DataBind();
        }

        private void ClearAllFields()
        {
            inputEmployeeName.Value = String.Empty;
            inputEmployeeAge.Value = String.Empty;
            inputEmployeeMobile.Value = String.Empty;
            inputEmployeeDegree.Value = String.Empty;
            inputEmployeeExperience.Value = String.Empty;
            inputEmployeeSalary.Value = String.Empty;
            inputEmployeeAddress.Value = String.Empty;
        }
    }
}