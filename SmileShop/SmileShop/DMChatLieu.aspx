<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="DMChatLieu.aspx.cs" Inherits="DMChatLieu" %>

<asp:Content ID="ctChatLieu" ContentPlaceHolderID="phHome" Runat="Server">
    <a href="/">Quay lại</a>
    <h1>DANH MỤC CHẤT LIỆU</h1>
    <div>
        <asp:HiddenField ID="hfChatLieuID" runat="server" />
        <table>
            <tr>
                <td>
                    <asp:Label ID="lbTenChatLieu" runat="server" Text="Tên Chất liệu"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="tbTenChatLieu" runat="server"></asp:TextBox>
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
    <asp:GridView ID="gvChatLieu" runat="server" AutoGenerateColumns="False" DataKeyNames="ChatLieuID" >
        <Columns>
            <asp:BoundField DataField="ChatLieuID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ChatLieuID"/>
            <asp:BoundField DataField="TenChatLieu" HeaderText="Tên Chất liệu" SortExpression="TenChatLieu"/>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="btnDelete" runat="server" CommandArgument='<%# Eval("ChatLieuID") %>' OnClick="btnDelete_Click" >Delete</asp:LinkButton>
                    <asp:LinkButton ID="btnEdit" runat="server" CommandArgument='<%# Eval("ChatLieuID") + "," + Eval("TenChatLieu") %>' OnClick="btnEdit_Click">Edit</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>

