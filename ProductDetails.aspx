<%@ Page Title="Detail Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="WebApplication1.ProductDetails" %>




<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%--breadcums--%>
    <div class=" md:py-12 md:px-5 md:p-4  leading-6">
        <div class=" md:px-4 sm:px-6 lg:px-8">
            <nav>
                <ul class="flex m-0 items-center p-0">
                    <li class="text-left">
                        <a href="/" title="" class="cursor-pointer text-gray-400 hover:text-gray-900">
                            <!-- Heroicons - Home -->
                            <svg class="block h-5 w-5 align-middle" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                                <path strokeLinecap="round" strokeLinejoin="round" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
                            </svg>
                        </a>
                    </li>

                    <li class="flex items-center text-left">
                        <svg class="block h-5 w-5 align-middle text-gray-400" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20" aria-hidden="true">
                            <path d="M5.555 17.776l8-16 .894.448-8 16-.894-.448z"></path>
                        </svg>

                        <a href="/Products" title="" class="cursor-pointer text-sm font-normal leading-5 text-gray-400 hover:text-gray-900">Sản phẩm  </a>
                    </li>

                    <li class="flex items-center text-left">
                        <svg class="block h-5 w-5 align-middle text-gray-400" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20" aria-hidden="true">
                            <path d="M5.555 17.776l8-16 .894.448-8 16-.894-.448z"></path>
                        </svg>

                        <a href="#" title="" class="cursor-pointer text-sm font-normal leading-5 text-gray-400 hover:text-gray-900">Sản phẩm chi tiết </a>
                    </li>
                </ul>
            </nav>
            <%--end breadcums--%>

            <asp:Literal ID="ProductDetailLiteral" runat="server"></asp:Literal>

            <h2 class="heading_product text-2xl md:px-5">Gợi ý cho bạn: </h2>
            <div class="grid md:grid-cols-4 grid-cols-1">
                <asp:PlaceHolder ID="ProductsPlaceholder" runat="server"></asp:PlaceHolder>
            </div>
        </div>

    </div>

</asp:Content>
