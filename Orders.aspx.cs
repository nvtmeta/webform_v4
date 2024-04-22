using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Orders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productId = Request.QueryString["productId"];
            // Get user ID (replace with your logic)
            int userId = GetCurrentUserId();

            if (productId != null)
            {
                CreateOrder(userId, int.Parse(productId));
            }
            getAllProducts(userId);

        }

        private int GetCurrentUserId()
        {
            // Implement logic to retrieve the currently logged-in user ID
            // (e.g., from session variables, cookies, etc.)
            string connectionString = "Server=localhost\\SQLEXPRESS;Database=db_ECommerceShop;Trusted_Connection=True;TrustServerCertificate=true;";
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                string sqlAdmin = "SELECT UserId FROM Users WHERE UserRole = 'admin'";
                using (SqlCommand cmd = new SqlCommand(sqlAdmin, conn))
                {
                    return (int)cmd.ExecuteScalar(); // Get the generated order ID
                }
            }
        }

        private int CreateOrder(int userId, int ProductId)
        {
            string connectionString = "Server=localhost\\SQLEXPRESS;Database=db_ECommerceShop;Trusted_Connection=True;TrustServerCertificate=true;";
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();

                // Check if the order already exists for the given user and product
                string checkSql = "SELECT COUNT(*) FROM OrdersPro WHERE UserId = @UserId AND ProductId = @ProductId";
                using (SqlCommand checkCmd = new SqlCommand(checkSql, conn))
                {
                    checkCmd.Parameters.AddWithValue("@UserId", userId);
                    checkCmd.Parameters.AddWithValue("@ProductId", ProductId);
                    int existingOrderCount = Convert.ToInt32(checkCmd.ExecuteScalar());

                    // If an order already exists, return -1 to indicate that the order was not created
                    if (existingOrderCount > 0)
                    {
                        return -1;
                    }
                }

                // If the order doesn't exist, insert the order
                string sql = "INSERT INTO OrdersPro (UserId, ProductId) VALUES (@UserId, @ProductId); SELECT SCOPE_IDENTITY();";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@UserId", userId);
                    cmd.Parameters.AddWithValue("@ProductId", ProductId);
                    // Get the generated order ID
                    return Convert.ToInt32(cmd.ExecuteScalar());
                }
            }
        }

        protected void getAllProducts(int userId)
        {
            string connectionString = "Server=localhost\\SQLEXPRESS;Database=db_ECommerceShop;Trusted_Connection=True;TrustServerCertificate=true;";
            string sql = "SELECT * FROM OrdersPro o INNER JOIN Products p ON o.ProductId = p.ProductId where o.UserId=@userId"; // Replace with your actual query
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand(sql, connection);
                command.Parameters.AddWithValue("@userId", userId);

                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    // Create a product card HTML string dynamically
                    string productId = reader["ProductId"].ToString();
                    string imageUrl = reader["image_url"].ToString();
                    string productName = reader["Name"].ToString();
                    string lastPrice = reader["LastPrice"].ToString();

                    string productCardHtml = $@"
            <div class=""flex flex-col rounded-lg bg-white sm:flex-row"">
                    <img class=""m-2 h-24 w-28 rounded-md border object-cover object-center"" src=""{imageUrl}.jpg"" alt="""" />
                    <div class=""flex w-full flex-col px-4 py-4"">
                        <span class=""font-semibold"">
                    {productName}
                    </span>
                     <p class=""mt-auto text-lg font-bold"">
                    {lastPrice}
                        </p>
                    </div>
                </div>
               ";

                    // Add the product card HTML to a placeholder control or directly to the page
                    ProductsPlaceholder.Controls.Add(new LiteralControl(productCardHtml));
                }

                reader.Close();
            } // Make su
        }
    }

}