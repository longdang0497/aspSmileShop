<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="DMSize.aspx.cs" Inherits="DMSize" %>

<asp:Content ID="Content1" ContentPlaceHolderID="phHome" Runat="Server">
    <h1>DANH MỤC SIZE</h1>
    <div>
        <asp:HiddenField ID="hfSizeID" runat="server" />
        <table>
            <tr>
                <td>
                    <asp:Label ID="lbTenSize" runat="server" Text="Tên Size"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="tbTenSize" runat="server"></asp:TextBox>
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
    <asp:GridView ID="gvSize" runat="server" AutoGenerateColumns="False" DataKeyNames="SizeID" >
        <Columns>
            <asp:BoundField DataField="SizeID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="SizeID"/>
            <asp:BoundField DataField="TenSize" HeaderText="Tên Size" SortExpression="TenSize"/>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="btnDelete" runat="server" CommandArgument='<%# Eval("SizeID") %>' OnClick="btnDelete_Click" >Delete</asp:LinkButton>
                    <asp:LinkButton ID="btnEdit" runat="server" CommandArgument='<%# Eval("SizeID") + "," + Eval("TenSize") %>' OnClick="btnEdit_Click">Edit</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    
</asp:Content>


