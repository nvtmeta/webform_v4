<%@ Page Title="signUp" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebApplication1.SignUp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="flex h-screen w-full items-center justify-center ">
        <div class="w-full max-w-3xl overflow-hidden rounded-lg bg-white shadow-lg sm:flex">
            <div class="m-2 w-full rounded-2xl bg-gray-400 bg-cover bg-center text-white sm:w-2/5" style="background-image:
    url(https://i.ibb.co/fkp7dSx/party.jpg)"></div>
            <div class="w-full sm:w-3/5">
                <div class="p-8">
                    <h1 class="text-3xl font-black text-slate-700 w-full text-center " style=" color: #278fda" >Đăng ký</h1>
                    <p class="mt-2 mb-5 text-base leading-tight text-gray-600">Boleno - Ưu đãi bùng nổ, mua sắm thả ga! Mở tài khoản miễn phí, rinh ngàn deal sốc! </p>
                    <div class="mt-8 flex justify-center flex-col items-center">
                        <div class="relative mt-2 w-full">
                            <input type="text" id="email" value="email@gmail.com" class="border-1 peer block min-w-full appearance-none rounded-lg border border-gray-300 bg-transparent 
                                px-2.5 pb-2.5 pt-4 text-sm text-gray-900 focus:border-blue-600 focus:outline-none focus:ring-0" placeholder=" " />
                            <label for="email" class="absolute top-2 left-1 z-10 origin-[0] -translate-y-4 scale-75 transform cursor-text select-none bg-white px-2 text-sm text-gray-500 duration-300 peer-placeholder-shown:top-1/2 peer-placeholder-shown:-translate-y-1/2 peer-placeholder-shown:scale-100 peer-focus:top-2 peer-focus:-translate-y-4 peer-focus:scale-75 peer-focus:px-2 peer-focus:text-blue-600">Nhận email của bạn</label>
                        </div>
                        <div class="relative mt-2 w-full">
                            <input type="text" id="password" class="border-1 peer block min-w-full appearance-none rounded-lg border border-gray-300 bg-transparent px-2.5 pb-2.5 pt-4 text-sm text-gray-900 focus:border-blue-600 focus:outline-none focus:ring-0" placeholder=" " />
                            <label for="password" class="absolute top-2 left-1 z-10 origin-[0] -translate-y-4 scale-75 transform cursor-text select-none bg-white px-2 text-sm text-gray-500 duration-300 peer-placeholder-shown:top-1/2 peer-placeholder-shown:-translate-y-1/2 peer-placeholder-shown:scale-100 peer-focus:top-2 peer-focus:-translate-y-4 peer-focus:scale-75 peer-focus:px-2 peer-focus:text-blue-600">Nhập mật khẩu của bạn</label>
                        </div>
                        <a href="/SignIn" class="mt-4 w-full mx-auto
                            block cursor-pointer rounded-lg bg-gradient-to-r 
                            from-sky-400 to-blue-500 text-center font-bold text-white pt-3 pb-3 text-white shadow-lg hover:bg-blue-400">
                            Tạo tài khoản
                        </a>
                    </div>
                    <div class="mt-4 text-center">
                        <p class="text-sm text-gray-600">Bạn đã có sẵn tài khoản? <a href="/SignIn" class="font-bold text-blue-600 no-underline hover:text-blue-400">Đăng nhập</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
