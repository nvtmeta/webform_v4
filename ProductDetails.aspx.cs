using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                // Check if productId query string parameter exists
                if (!string.IsNullOrEmpty(Request.QueryString["productId"]))
                {
                    // Get productId from query string
                    string productId = Request.QueryString["productId"];

                    // Fetch product details from database using productId
                    // Replace the following code with your database access logic
                    string connectionString = "Server=localhost\\SQLEXPRESS;Database=db_ECommerceShop;Trusted_Connection=True;TrustServerCertificate=true;";
                    string sql = "SELECT P.*, C.Name AS CategoryName FROM Products P INNER JOIN Categories C ON P.CategoryId = C.CategoryId" +
                        " WHERE P.isDeleted = 0 and P.ProductId=@ProductId"; // Replace with your actual query

                    string sqlListProduct = "SELECT TOP(4) * FROM Products WHERE isDeleted = 0 "; // Replace with your actual query


                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        using (SqlCommand command = new SqlCommand(sql, connection))
                        {
                            // Add productId as a parameter
                            command.Parameters.AddWithValue("@ProductId", productId);
                            connection.Open();

                            SqlDataReader reader = command.ExecuteReader();

                            if (reader.Read())
                            {
                                string imageUrl = reader["image_url"].ToString();
                                string productName = reader["Name"].ToString();
                                string category = reader["CategoryName"].ToString();
                                string description = reader["Description"].ToString();
                                string lastPrice = reader["LastPrice"].ToString();
                                string price = reader["Price"].ToString();

                                string productDetailHtml = $@"
<section class=""text-gray-700 body-font overflow-hidden bg-white"">
  <div class=""container px-5 py-24 "">
    <div class="" justify-start flex "">
      <img alt=""ecommerce"" class="" w-[624px] h-[624px] object-cover object-center rounded-2xl 
border border-gray-200"" src={imageUrl}>
      <div class=""lg:w-1/2 w-full lg:pl-10 lg:py-6 mt-6 lg:mt-0"">
 <div class=""relative w-fit mb-3 grid select-none items-center whitespace-nowrap rounded-full border-[1px] border-solid border-blue-500
py-1.5 px-3 font-sans text-xs font-bold uppercase text-blue-500"">
      {category}
    </div>
        <h1 class=""text-gray-900 text-3xl title-font font-medium mb-1"">
{productName}
</h1>
        <div class=""flex mb-4"">
          <span class=""flex items-center"">
            <svg fill=""currentColor"" stroke=""currentColor"" stroke-linecap=""round"" stroke-linejoin=""round"" stroke-width=""2"" class=""w-4 h-4 text-red-500"" viewBox=""0 0 24 24"">
              <path d=""M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z""></path>
            </svg>
            <svg fill=""currentColor"" stroke=""currentColor"" stroke-linecap=""round"" stroke-linejoin=""round"" stroke-width=""2"" class=""w-4 h-4 text-red-500"" viewBox=""0 0 24 24"">
              <path d=""M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z""></path>
            </svg>
            <svg fill=""currentColor"" stroke=""currentColor"" stroke-linecap=""round"" stroke-linejoin=""round"" stroke-width=""2"" class=""w-4 h-4 text-red-500"" viewBox=""0 0 24 24"">
              <path d=""M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z""></path>
            </svg>
            <svg fill=""currentColor"" stroke=""currentColor"" stroke-linecap=""round"" stroke-linejoin=""round"" stroke-width=""2"" class=""w-4 h-4 text-red-500"" viewBox=""0 0 24 24"">
              <path d=""M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z""></path>
            </svg>
            <svg fill=""none"" stroke=""currentColor"" stroke-linecap=""round"" stroke-linejoin=""round"" stroke-width=""2"" class=""w-4 h-4 text-red-500"" viewBox=""0 0 24 24"">
              <path d=""M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z""></path>
            </svg>
            <span class=""text-gray-600 ml-3"">4 Reviews</span>
          </span>
          <span class=""flex ml-3 pl-3 py-2 border-l-2 border-gray-200"">
            <a class=""text-gray-500"">
              <svg fill=""currentColor"" stroke-linecap=""round"" stroke-linejoin=""round"" stroke-width=""2"" class=""w-5 h-5"" viewBox=""0 0 24 24"">
                <path d=""M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z""></path>
              </svg>
            </a>
            <a class=""ml-2 text-gray-500"">
              <svg fill=""currentColor"" stroke-linecap=""round"" stroke-linejoin=""round"" stroke-width=""2"" class=""w-5 h-5"" viewBox=""0 0 24 24"">
                <path d=""M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z""></path>
              </svg>
            </a>
            <a class=""ml-2 text-gray-500"">
              <svg fill=""currentColor"" stroke-linecap=""round"" stroke-linejoin=""round"" stroke-width=""2"" class=""w-5 h-5"" viewBox=""0 0 24 24"">
                <path d=""M21 11.5a8.38 8.38 0 01-.9 3.8 8.5 8.5 0 01-7.6 4.7 8.38 8.38 0 01-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 01-.9-3.8 8.5 8.5 0 014.7-7.6 8.38 8.38 0 013.8-.9h.5a8.48 8.48 0 018 8v.5z""></path>
              </svg>
            </a>
          </span>
        </div>
        <div class=""flex mt-6 items-center pb-5 border-b-2 border-gray-200 mb-5"">
          <div class=""flex"">
            <span class=""mr-3"">Color</span>
            <button class=""border-2 border-gray-300 rounded-full w-6 h-6 focus:outline-none""></button>
            <button class=""border-2 border-gray-300 ml-1 bg-gray-700 rounded-full w-6 h-6 focus:outline-none""></button>
            <button class=""border-2 border-gray-300 ml-1 bg-red-500 rounded-full w-6 h-6 focus:outline-none""></button>
          </div>
          <div class=""flex ml-6 items-center"">
            <span class=""mr-3"">Size</span>
            <div class=""relative"">
              <select class=""rounded border appearance-none border-gray-400 py-2 focus:outline-none focus:border-red-500 text-base pl-3 pr-10"">
                <option>10ml</option>
                <option>20ml</option>
                <option>30ml</option>
                <option>40ml</option>
              </select>
              <span class=""absolute right-0 top-0 h-full w-10 text-center text-gray-600 pointer-events-none flex items-center justify-center"">
                <svg fill=""none"" stroke=""currentColor"" stroke-linecap=""round"" stroke-linejoin=""round"" stroke-width=""2"" class=""w-4 h-4"" viewBox=""0 0 24 24"">
                  <path d=""M6 9l6 6 6-6""></path>
                </svg>
              </span>
            </div>
          </div>
        </div>
        <div class=""flex"">
          <span class=""title-font font-medium text-2xl text-red-500 mr-3"">${lastPrice} đ</span>
          <a href=""#"" class=""flex p-2 items-center justify-center rounded-md bg-gradient-to-r
            from-sky-400 to-blue-500 
            px-5 text-center text-sm font-medium text-white hover:from-sky-500 hover:to-blue-600  
                focus:outline-none focus:ring-4 focus:ring-blue-300"">
                  <svg xmlns=""http://www.w3.org/2000/svg"" class=""mr-2 h-6 w-6"" fill=""none"" viewBox=""0 0 24 24"" stroke=""currentColor"" stroke-width=""2"">
                    <path stroke-linecap=""round"" stroke-linejoin=""round"" d=""M3 3h2l.4 2M7 13h10l4-8H5.4M7 13L5.4 5M7 13l-2.293 2.293c-.63.63-.184 1.707.707 1.707H17m0 0a2 2 0 100 4 2 2 0 000-4zm-8 2a2 2 0 11-4 0 2 2 0 014 0z"" />
                  </svg>
                  Thêm vào giỏ </a
        </div>
      </div>
    </div>
      
  </div>
<h2 class=""heading_product mt-5""> Chi tiết sản phẩm: </h2>
 <p class=""leading-relaxed bg-blue-500 p-2 w-[624px] text-base mt-3"">{description}</p>




</section>";

                                ProductDetailLiteral.Text = productDetailHtml;
                            }
                            else
                            {
                                // Product not found, handle accordingly (e.g., display error message)
                            }

                            reader.Close();
                        }

                        // Fetch list of products
                        using (SqlCommand command = new SqlCommand(sqlListProduct, connection))
                        {
                            SqlDataReader reader = command.ExecuteReader();

                            // Process the list of products here
                            while (reader.Read())
                            {
                                // Create a product card HTML string dynamically
                                string ProductId = reader["ProductId"].ToString();
                                string imageUrl = reader["image_url"].ToString();
                                string productName = reader["Name"].ToString();
                                //string description = reader["Description"].ToString();
                                string lastPrice = reader["LastPrice"].ToString();
                                string price = reader["Price"].ToString();

                                string productCardHtml = $@"
            <div class="" relative m-10 flex w-full max-w-xs flex-col overflow-hidden rounded-2xl
        bg-white shadow-sm border-2 border-solid transition cursor-pointer hover:border-blue-400 hover:shadow-xl"">
              <a class=""relative mx-3 mt-3 flex  overflow-hidden rounded-2xl"" href=""/ProductDetails.aspx?productId={ProductId}"">
                <img class=""object-cover w-full h-[285.6px]"" src=""{imageUrl}"" alt=""product image"" />
              </a>
              <div class=""mt-8 px-2 pb-2"">
                <a  href=""/ProductDetails.aspx?productId={productId}"">
                  <h5 class=""text-lg  line-clamp-2 bg-gradient-to-r from-sky-400 to-blue-500 bg-clip-text text-transparent font-bold "">{productName}</h5>
                </a>
                <div class=""mt-2 mb-5 flex items-center justify-between"">
                  <p>
                    <span class=""text-xl font-medium text-red-400"">{lastPrice} đ</span>
                    <span class=""text-sm text-slate-900 line-through"">{price} đ</span>
                  </p>
                </div>
                <a href=""#"" class=""flex p-2 items-center justify-center rounded-md bg-gradient-to-r
            from-sky-400 to-blue-500 
            px-5 text-center text-sm font-medium text-white hover:from-sky-500 hover:to-blue-600  
                focus:outline-none focus:ring-4 focus:ring-blue-300"">
                  <svg xmlns=""http://www.w3.org/2000/svg"" class=""mr-2 h-6 w-6"" fill=""none"" viewBox=""0 0 24 24"" stroke=""currentColor"" stroke-width=""2"">
                    <path stroke-linecap=""round"" stroke-linejoin=""round"" d=""M3 3h2l.4 2M7 13h10l4-8H5.4M7 13L5.4 5M7 13l-2.293 2.293c-.63.63-.184 1.707.707 1.707H17m0 0a2 2 0 100 4 2 2 0 000-4zm-8 2a2 2 0 11-4 0 2 2 0 014 0z"" />
                  </svg>
                  Thêm vào giỏ </a
                >
              </div>
            </div>
               ";



                                // Add the product card HTML to a placeholder control or directly to the page
                                ProductsPlaceholder.Controls.Add(new LiteralControl(productCardHtml));
                            }

                            reader.Close(); // Close the reader after use
                        }
                    }


                }
            }
        }
    }
}