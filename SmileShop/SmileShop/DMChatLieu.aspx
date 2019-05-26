<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="DMChatLieu.aspx.cs" Inherits="DMChatLieu" %>

<asp:Content ID="ctChatLieu" ContentPlaceHolderID="phHome" Runat="Server">
    <div class="segment-size">
        <a class="btn" href="/">Quay lại</a>
        <div style="text-align: center !important;">
            <h1 style="color: black; font-size: 3rem; font-family: Cambria">DANH MỤC CHẤT LIỆU</h1>
            <div>
                <asp:HiddenField ID="hfChatLieuID" runat="server" />
                <table style="text-align:center !important">
                    <tr>
                        <td>
                            <asp:Label ID="lbTenChatLieu" CssClass="lb" runat="server" Text="Tên Chất liệu"></asp:Label>
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="tbTenChatLieu" CssClass="tb" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="2">
                            <asp:Button ID="btnSave" CssClass="btnAction" runat="server" Text="Save" OnClick="btnSave_Click" />                    
                            <asp:Button ID="btnRefresh" CssClass="btnAction" runat="server" Text="Refresh" OnClick="btnRefresh_Click" />
                            <asp:Button ID="btnSearch" CssClass="btnAction-id" runat="server" Text="Search" OnClick="btnSearch_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="2">
                            <asp:Label ID="lbSuccess" CssClass="lb-success" runat="server" Text="" ForeColor="Green"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="2">
                            <asp:Label ID="lbError" CssClass="lb-error" runat="server" Text="" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
        </div>        
        <br />
        <div class="gv-align">
            <asp:GridView ID="gvChatLieu" runat="server" 
            AutoGenerateColumns="False" DataKeyNames="ChatLieuID" 
            CssClass="segment-gv" HeaderStyle-CssClass="header-gv" RowStyle-CssClass="rows-gv">
                <Columns>
                    <asp:BoundField DataField="ChatLieuID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ChatLieuID"/>
                    <asp:BoundField DataField="TenChatLieu" HeaderText="Tên ChatLieu" SortExpression="TenChatLieu"/>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="btnDelete" runat="server" CommandArgument='<%# Eval("ChatLieuID") %>' OnClick="btnDelete_Click" >Delete</asp:LinkButton>
                            <asp:LinkButton ID="btnEdit" runat="server" CommandArgument='<%# Eval("ChatLieuID") + "," + Eval("TenChatLieu") %>' OnClick="btnEdit_Click">Edit</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

