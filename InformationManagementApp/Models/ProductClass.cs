using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InformationManagementApp.Models
{
    public class ProductClass
    {
        public ProductClass(string productName, string productCode, double productPrice, string productMfgDate, string productExpDate) : this()
        {
            ProductName = productName;
            ProductCode = productCode;
            ProductPrice = productPrice;
            ProductMfgDate = productMfgDate;
            ProductExpDate = productExpDate;
        }

        public ProductClass()
        {
        }

        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public string ProductCode { get; set; }
        public double ProductPrice { get; set; }
        public string ProductMfgDate { get; set; }  
        public string ProductExpDate { get; set; }


    }
}