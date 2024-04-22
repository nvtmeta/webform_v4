using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.HttpMethod == "POST") // Use POST for security
            {
                string email = Request.Form["UserEmail"];
                string password = Request.Form["UserPassword"]; // Assuming a form field named "UserFormPassword"

                if (!string.IsNullOrEmpty(email) && !string.IsNullOrEmpty(password))
                {
                    // Validate user input (sanitize email and password)
                    email = SanitizeInput(email); // Example function to sanitize email
                    password = SanitizeInput(password); // Example function to sanitize password

                    if (ValidateCredentials(email, password))
                    {
                        bool updateSuccessful = UpdateUserRole(email); // Handle potential errors
                            
                        if (updateSuccessful)
                        {
                            Response.Redirect("/");
                        }
                        else
                        {
                            // Display an error message for failed role update
                        }
                    }
                    else
                    {
                        // Display an error message for invalid credentials
                    }
                }
            }
        }

        protected bool ValidateCredentials(string email, string password)
        {
            string connectionString = "Server=localhost\\SQLEXPRESS;Database=db_ECommerceShop;Trusted_Connection=True;TrustServerCertificate=true;";
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();

            string hashedPassword = HashPassword(password); // Hash password before comparison

            string sql = "SELECT COUNT(*) FROM Users WHERE (UserEmail = @Email OR Username = @Email) AND UserPassword = @HashedPassword"; // Use combined email/username check
            SqlCommand cmd = new SqlCommand(sql, conn);

            cmd.Parameters.AddWithValue("@Email", email);
            cmd.Parameters.AddWithValue("@HashedPassword", hashedPassword);

            int count = (int)cmd.ExecuteScalar();

            conn.Close();

            return count > 0; // Return true if a user is found
        }

        protected bool UpdateUserRole(string email)
        {
            string connectionString = "Server=localhost\\SQLEXPRESS;Database=db_ECommerceShop;Trusted_Connection=True;TrustServerCertificate=true;";
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();

            // Set all users to 'user' role (excluding the one being updated)
            string sql1 = "UPDATE Users SET UserRole = 'user'";
            SqlCommand cmd1 = new SqlCommand(sql1, conn);
            cmd1.ExecuteNonQuery();

            string sql = "UPDATE Users SET UserRole = 'admin' WHERE UserEmail = @Email";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@Email", email);
            int rowsAffected = cmd.ExecuteNonQuery();

            conn.Close();

            return rowsAffected > 0; // Update successful if at least one row is affected
        }

        // Example function to sanitize user input (replace with your implementation)
        private string SanitizeInput(string input)
        {
            // Implement logic to remove potentially harmful characters from the input
            // You can use libraries like System.Security.SecurityElement.Escape for basic sanitization
            return input;
        }

        // Example function to hash passwords (replace with your implementation using a secure hashing algorithm like bcrypt)
        private string HashPassword(string password)
        {
            // Implement logic to securely hash the password using a strong algorithm
            // Consider using libraries like BCrypt.Net for password hashing
            return password; // Placeholder, replace with actual hashed password
        }

    }
}