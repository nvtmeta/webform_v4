<%@ Page Title="product list" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="WebApplication1.Products" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="mx-auto max-w-screen-lg">
        <div class="relative h-56 rounded-xl bg-cover bg-center bg-no-repeat shadow-lg"
            style="background-image: url(https://img.freepik.com/premium-photo/3d-surreal-sea-water-scene-summer-cosmetic-product-display-mockup-sunscreen-tube-is-mounted-glass-stage-decorated-with-crystal-balls-colorful-glass-plates_76964-132631.jpg?w=1060)">
            <div class="px-4 pt-8 pb-10">
                <div class="absolute inset-x-0 -bottom-10 mx-auto w-36 rounded-full border-8 border-white shadow-lg">
                    <span class="absolute right-0 m-3 h-3 w-3 rounded-full bg-green-500 ring-2 ring-green-300 ring-offset-2"></span>
                    <img class="mx-auto h-auto w-full rounded-full" src="https://bonita.vn/wp-content/uploads/2019/10/logo.png" alt="" />
                </div>
            </div>
        </div>
        <div class="mt-10 flex flex-col items-start justify-center space-y-4 py-8 px-4 sm:flex-row sm:space-y-0 md:justify-between lg:px-0">
            <div class="max-w-lg">
                <h1 class="text-2xl font-bold text-gray-800">Giới thiệu về: Boleno</h1>
                <p class="mt-2 text-gray-600">Boleno - thương hiệu mỹ phẩm thuần chay tiên phong tại Việt Nam, ra đời vào năm 2018 với sứ mệnh cao cả: Trao quyền cho phụ nữ Việt Nam tỏa sáng rạng ngời và tự tin khẳng định bản thân. </p>
            </div>
            <div class="">
                <button class="flex whitespace-nowrap rounded-lg bg-gradient-to-r 
                    px-6 py-2 font-bold from-sky-400 to-blue-500 text-white transition hover:translate-y-1">
                    <svg xmlns="http://www.w3.org/2000/svg" class="mr-2 inline h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z" />
                    </svg>
                    Chat with us
                </button>
                <p class="mt-4 flex items-center whitespace-nowrap text-gray-500 sm:justify-end">
                    <svg xmlns="http://www.w3.org/2000/svg" class="mr-2 inline h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                        <path d="M2 3a1 1 0 011-1h2.153a1 1 0 01.986.836l.74 4.435a1 1 0 01-.54 1.06l-1.548.773a11.037 11.037 0 006.105 6.105l.774-1.548a1 1 0 011.059-.54l4.435.74a1 1 0 01.836.986V17a1 1 0 01-1 1h-2C7.82 18 2 12.18 2 5V3z" />
                    </svg>
                    +1 432 923 0001
                </p>
            </div>
        </div>

        <main class=" px-2 pb-20 sm:px-8 lg:mt-16 lg:gap-x-4 lg:px-0">
            <div class="flex flex-column items-start">
                <div class="text-3xl font-bold px-5 w-full text-center" style="color: #0094ff">Sản phẩm bán chạy</div>
                <div class="grid md:grid-cols-4 grid-cols-1">
                    <asp:PlaceHolder ID="ProductsPlaceholder" runat="server"></asp:PlaceHolder>
                </div>
            </div>

        </main>
    </div>

</asp:Content>
