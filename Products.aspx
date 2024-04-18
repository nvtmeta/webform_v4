<%@ Page Title="product list" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="WebApplication1.Products" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section class="mx-auto bg-gradient-to-r from-slate-300 to-slate-500 py-16">
        <div class="mx-auto flex w-full flex-col items-center justify-center sm:max-w-screen-sm md:max-w-screen-md lg:flex-row">
            <div class="text-center">
                <h2 class="bg-clip-text text-3xl font-extrabold text-gray-700 sm:text-5xl">Get in touch</h2>
                <p class="bg-gradient-to-r from-pink-500 to-indigo-500 bg-clip-text text-4xl font-extrabold text-transparent sm:text-6xl">Let's take your business to the moon</p>
                <a href="#" class="shadow-pink-600/30 mt-10 inline-flex h-12 items-center rounded-full bg-pink-500 px-6 py-3 text-xl font-light text-white shadow-md transition hover:translate-y-1 hover:scale-105 hover:bg-pink-600 hover:shadow-lg">Contact Us</a>
            </div>
        </div>
    </section>


    <main class=" px-2 pb-20 sm:px-8 lg:mt-16 lg:gap-x-4 lg:px-0">
        <div class="flex flex-column items-start">
            <div class="text-3xl font-bold mt-5">Sản phẩm bán chạy</div>
            <div class="grid grid-cols-4 lg:gap-x-4">
                <asp:PlaceHolder ID="ProductsPlaceholder" runat="server"></asp:PlaceHolder>
            </div>
        </div>

    </main>
    </div>

</asp:Content>
