﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" ValidateRequest="false" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="ctDefault" ContentPlaceHolderID="phHome" Runat="Server">
    <div class="main-content">
        <div class="segment">
            <ul>
                <li><a href="/DMSize.aspx" style="color:black; font-family: Cambria">Danh mục Size</a></li>
                <li><a href="/DMChatLieu.aspx" style="color:black; font-family: Cambria">Danh mục Chất liệu</a></li>
                <li><a href="/DMMau.aspx" style="color:black; font-family: Cambria">Danh mục Màu</a></li>
                <li><a href="/DMSanPham.aspx" style="color:black; font-family: Cambria">Danh mục Sản phẩm</a></li>
            </ul>
        </div>
    </div>
</asp:Content>

