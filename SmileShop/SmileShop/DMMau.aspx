<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="DMMau.aspx.cs" Inherits="DMMau" %>

<asp:Content ID="ctMau" ContentPlaceHolderID="phHome" Runat="Server">
    <a href="/">Quay lại</a>
    <h1>DANH MỤC MÀU</h1>
    <div>
        <asp:HiddenField ID="hfMauID" runat="server" />
        <table>
            <tr>
                <td>
                    <asp:Label ID="lbTenMau" runat="server" Text="Tên Màu"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="tbTenMau" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2">
                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />                    
                    <asp:Button ID="btnRefresh" runat="server" Text="Refresh" OnClick="btnRefresh_Click" />
                    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2">
                    <asp:Label ID="lbSuccess" runat="server" Text="" ForeColor="Green"></asp:Label>
                </td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2">
                    <asp:Label ID="lbError" runat="server" Text="" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    <br />
    <asp:GridView ID="gvMau" runat="server" AutoGenerateColumns="False" DataKeyNames="MauID" >
        <Columns>
            <asp:BoundField DataField="MauID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="MauID"/>
            <asp:BoundField DataField="TenMau" HeaderText="Tên Màu" SortExpression="TenMau"/>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="btnDelete" runat="server" CommandArgument='<%# Eval("MauID") %>' OnClick="btnDelete_Click" >Delete</asp:LinkButton>
                    <asp:LinkButton ID="btnEdit" runat="server" CommandArgument='<%# Eval("MauID") + "," + Eval("TenMau") %>' OnClick="btnEdit_Click">Edit</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>

