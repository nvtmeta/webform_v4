using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the URL parameter 'deleteOrder' is present and has a value of 'true'
            if (!string.IsNullOrEmpty(Request.QueryString["deleteOrder"]) && Request.QueryString["deleteOrder"] == "true")
            {
                DeleteAllOrders(); // Call a method to delete all orders
            }

            string connectionString = "Server=localhost\\SQLEXPRESS;Database=db_ECommerceShop;Trusted_Connection=True;TrustServerCertificate=true;";
            string sql = "SELECT TOP 1 * FROM Users WHERE UserRole = 'admin'"; // Limit to top 1 row
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand(sql, connection);

                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    // Create a product card HTML string dynamically
                    string UserId = reader["UserId"].ToString();
                    string FullName = reader["FullName"].ToString();
                    string adminNameText = "Welcome " + FullName + " " + UserId;
                    adminName.Text = adminNameText;

                }

                reader.Close();
            } // Make su

        }

        private void DeleteAllOrders()
        {
            // Implement the logic to delete all orders from the database
            string connectionString = "Server=localhost\\SQLEXPRESS;Database=db_ECommerceShop;Trusted_Connection=True;TrustServerCertificate=true;";
            string sql = "DELETE FROM OrdersPro"; // Example SQL query to delete all orders
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand(sql, connection);
                command.ExecuteNonQuery();
            }
        }
    }
}