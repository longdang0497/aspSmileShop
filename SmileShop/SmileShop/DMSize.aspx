<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" ValidateRequest="false" AutoEventWireup="true" CodeFile="DMSize.aspx.cs" Inherits="DMSize" %>

<asp:Content ID="ctSize" ContentPlaceHolderID="phHome" Runat="Server">    
    <div class="segment-size">
        <a class="btn" href="/">Quay lại</a>
        <div style="text-align: center !important;">
            <h1 style="color: black; font-size: 3rem; font-family: Cambria">DANH MỤC SIZE</h1>
            <div>
                <asp:HiddenField ID="hfSizeID" runat="server" />
                <table style="text-align:center !important">
                    <tr>
                        <td>
                            <asp:Label ID="lbTenSize" CssClass="lb" runat="server" Text="Tên Size"></asp:Label>
                        </td>
                        <td colspan="2">
                            <asp:TextBox ID="tbTenSize" CssClass="tb" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td colspan="2">
                            <asp:Button ID="btnSave" CssClass="btnAction" runat="server" Text="Save" OnClick="btnSave_Click" />                    
                            <asp:Button ID="btnRefresh" CssClass="btnAction" runat="server" Text="Refresh" OnClick="btnRefresh_Click" />
                            <asp:Button ID="btnSearch" CssClass="btnAction" runat="server" Text="Search" OnClick="btnSearch_Click" />
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
            <asp:GridView ID="gvSize" runat="server" 
            AutoGenerateColumns="False" DataKeyNames="SizeID" 
            CssClass="segment-gv" HeaderStyle-CssClass="header-gv" RowStyle-CssClass="rows-gv">
                <Columns>
                    <asp:BoundField DataField="SizeID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="SizeID"/>
                    <asp:BoundField DataField="TenSize" HeaderText="Tên Size" SortExpression="TenSize"/>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="btnDelete" runat="server" CommandArgument='<%# Eval("SizeID") %>' OnClientClick="return confirm('Bạn có muốn xóa dòng này?');" OnClick="btnDelete_Click" >Delete</asp:LinkButton>
                            <asp:LinkButton ID="btnEdit" runat="server" CommandArgument='<%# Eval("SizeID") + "," + Eval("TenSize") %>' OnClick="btnEdit_Click">Edit</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>    
</asp:Content>


