using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.Configuration;
using System.Web.UI;
using InformationManagementApp.Models;

namespace InformationManagementApp
{
    public partial class Product : Page
    {
        readonly string connectionString = WebConfigurationManager.ConnectionStrings["IMDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            ShowAllProducts();
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            string productName = inputProductName.Value;
            string productCode = inputProductCode.Value;
            double productPrice = Convert.ToDouble(inputProductPrice.Value);
            string mfgDate = inputProductMfgDate.Value;
            string expDate = inputProductExpDate.Value;
            
            ProductClass product = new ProductClass(productName, productCode, productPrice, mfgDate, expDate);

            int rowEffect = InsertProductInfo(connectionString, product);

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

        private int InsertProductInfo(string connectionString, ProductClass product)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "INSERT INTO [Product_tbl](ProductName, ProductCode, ProductPrice, " +
                           "ProductMfgDate, ProductExpDate)" +
                           "VALUES('" + product.ProductName + "'," + product.ProductCode + ","+product.ProductPrice +",'" + product.ProductMfgDate + "','" + product.ProductExpDate + "')";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            int rowEffect = command.ExecuteNonQuery();
            connection.Close();
            return rowEffect;
        }

        private void ShowAllProducts()
        {
            List<ProductClass> productList = new List<ProductClass>();

            SqlConnection connection = new SqlConnection(connectionString);

            string query = "SELECT * FROM Product_tbl";

            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                int productId = (int) reader["ProductId"];
                string productName = reader["ProductName"].ToString();
                string productCode = reader["ProductCode"].ToString();
                double productPrice = (double) reader["ProductPrice"];
                string mfgDate = reader["ProductMfgDate"].ToString();
                string expDate = reader["ProductExpDate"].ToString();

                ProductClass product = new ProductClass(productName, productCode, productPrice, mfgDate, expDate);
                product.ProductId = productId;
                productList.Add(product);
            }
            reader.Close();
            connection.Close();
            productListGridView.DataSource = productList;
            productListGridView.DataBind();
        }

        private void ClearAllFields()
        {
            inputProductName.Value = String.Empty;
            inputProductCode.Value = String.Empty;
            inputProductPrice.Value = String.Empty;
            inputProductMfgDate.Value = String.Empty;
            inputProductExpDate.Value = String.Empty;
        }
    }
}