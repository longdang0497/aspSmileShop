<%@ Page Title="" Language="C#" validateRequest="false" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="DMSanPham.aspx.cs" Inherits="DMSanPham" %>

<asp:Content ID="ctSanPham" ContentPlaceHolderID="phHome" Runat="Server">
    <div class="segment-size">
        <a class="btn" href="/">Quay lại</a>
        <div style="text-align: center !important;">
            <h1 style="color: black; font-size: 3rem; font-family: Cambria">DANH MỤC SẢN PHẨM</h1>
            <div class="info-box">
                <asp:HiddenField ID="hfSanPhamID" runat="server" />
                <table style="width: 100%; border-collapse: separate;">
                    <tr style="width: 100%; border-spacing: 5rem; justify-content: space-between !important">
                        <td>
                            <div style="text-align: left">
                                <table style="text-align: left;">
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbTenSanPham" CssClass="lb" runat="server" Text="Tên Sản phẩm"></asp:Label>
                                        </td>
                                        <td colspan="3" style="padding-top: 0.5rem;">
                                            <asp:TextBox ID="tbTenSanPham" CssClass="tb" runat="server" style="margin-left: 0px"></asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" 
                                                ControlToValidate="tbTenSanPham" Display="Dynamic" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                                        </td>
                                    </tr>                          
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbHinh" CssClass="lb" runat="server" Text="Hình ảnh"></asp:Label>
                                            <asp:HiddenField ID="hfHinh" runat="server" />
                                        </td>
                                        <td colspan="2" style="padding-top: 0.5rem;">
                                            <asp:FileUpload ID="fuHinh" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbSoLuong" CssClass="lb" runat="server" Text="Số lượng"></asp:Label>
                                        </td>
                                        <td colspan="2" style="padding-top: 0.5rem;">
                                            <asp:TextBox ID="tbSoLuong" CssClass="tb" runat="server"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                ErrorMessage="Số lượng phải là kiểu số" ControlToValidate="tbSoLuong" Display="Dynamic"
                                                SetFocusOnError="true" ValidationExpression="(\d)*" ForeColor="Red"></asp:RegularExpressionValidator>
                                        </td>                        
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbGiaBan" CssClass="lb" runat="server" Text="Giá bán"></asp:Label>
                                        </td>
                                        <td colspan="2" style="padding-top: 0.5rem;">
                                            <asp:TextBox ID="tbGiaBan" CssClass="tb" runat="server"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                ErrorMessage="Giá bán phải là kiểu số" ControlToValidate="tbGiaBan" Display="Dynamic"
                                                SetFocusOnError="true" ValidationExpression="(\d)*" ForeColor="Red"></asp:RegularExpressionValidator>
                                        </td>                        
                                    </tr>    
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbMoTa" CssClass="lb" runat="server" Text="Mô tả"></asp:Label>
                                        </td>
                                        <td colspan="2" style="padding-top: 0.5rem;">
                                            <textarea id="taMoTa" rows="2" runat="server" style="height: 5rem; width: 30rem"></textarea>                            
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td>
                            <div>
                                <table style="text-align: left;">  
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbNgayTao" CssClass="lb" runat="server" Text="Ngày tạo"></asp:Label>
                                        </td>
                                        <td colspan="2" style="padding-top: 0.5rem;">
                                            <asp:TextBox ID="tbNgayTao" CssClass="tb" runat="server"></asp:TextBox>                       
                                        </td>                        
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbNgayHuy" CssClass="lb" runat="server" Text="Ngày hủy"></asp:Label>
                                        </td>
                                        <td colspan="2" style="padding-top: 0.5rem;">
                                            <asp:TextBox ID="tbNgayHuy" CssClass="tb" runat="server"></asp:TextBox>                       
                                        </td>                        
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbMau" CssClass="lb" runat="server" Text="Chọn màu"></asp:Label>
                                        </td>
                                        <td colspan="2" style="padding-top: 0.5rem;">
                                            <asp:DropDownList ID="ddlMau" runat="server" CssClass="tb"></asp:DropDownList>                          
                                        </td>                        
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbSize" CssClass="lb" runat="server" Text="Chọn size"></asp:Label>
                                        </td>
                                        <td colspan="2" style="padding-top: 0.5rem;">
                                            <asp:DropDownList ID="ddlSize" runat="server" CssClass="tb"></asp:DropDownList>                          
                                        </td>                        
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="lbChatLieu" CssClass="lb" runat="server" Text="Chọn chất liệu"></asp:Label>
                                        </td>
                                        <td colspan="2" style="padding-top: 0.5rem;">
                                            <asp:DropDownList ID="ddlChatLieu" runat="server" CssClass="tb"></asp:DropDownList>                          
                                        </td>                        
                                    </tr>                                  
                                <tr>
                                    <td></td>
                                    <td colspan="4" style="padding-top: 0.5rem;">
                                        <asp:Button ID="btnSave" CssClass="btnAction" runat="server" Text="Save" OnClick="btnSave_Click" />                    
                                        <asp:Button ID="btnRefresh" CssClass="btnAction" runat="server" Text="Refresh" OnClick="btnRefresh_Click" />
                                        <%--<asp:Button ID="btnSearch" CssClass="btnAction-id" runat="server" Text="Search by ID" OnClick="btnSearch_Click" />--%>
                                        <asp:Button ID="Button1" CssClass="btnAction" runat="server" Text="Search" OnClick="btnSearch_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td colspan="2" style="padding-top: 0.5rem;">
                                        <asp:Label ID="lbSuccess" CssClass="lb-success" runat="server" Text="" ForeColor="Green"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td colspan="2" style="padding-top: 0.5rem;">
                                        <asp:Label ID="lbError" CssClass="lb-error" runat="server" Text="" ForeColor="Red"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        </td>
                    </tr>                   
                </table>
            </div>
        </div>        
        <br />
        <div class="gv-align">
            <asp:GridView ID="gvSanPham" runat="server" 
            AutoGenerateColumns="False" DataKeyNames="MaSP"
            CssClass="segment-gv" HeaderStyle-CssClass="header-gv" RowStyle-CssClass="rows-gv">
                <Columns>
                    <asp:BoundField DataField="MaSP" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="MaSP"/>
                    <asp:BoundField DataField="TenSP" HeaderText="Tên SP" SortExpression="TenSP"/>
                    <asp:BoundField DataField="MauID" HeaderText="Màu" InsertVisible="False" ReadOnly="True" SortExpression="MauID"/>
                    <asp:BoundField DataField="SizeID" HeaderText="Size" SortExpression="SizeID"/>
                    <asp:BoundField DataField="ChatLieuID" HeaderText="Chất liệu" InsertVisible="False" ReadOnly="True" SortExpression="ChatLieuID"/>
                    <asp:TemplateField HeaderText="Ảnh minh họa" SortExpression="AnhSP">
                        <ItemTemplate>
                            <asp:Image ID="imgSP" runat="server" Width="100px" Height="100px" 
                                ImageUrl='<%# "~/assets/SanPham/" + Eval("AnhSP").ToString() %>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="SoLuongSP" HeaderText="Số lượng" InsertVisible="False" ReadOnly="True" SortExpression="SoLuongSP"/>
                    <asp:BoundField DataField="GiaSP" HeaderText="Giá bán" SortExpression="GiaSP"/>
                    <asp:BoundField DataField="MoTaSP" HeaderText="Mô tả" InsertVisible="False" ReadOnly="True" SortExpression="MoTaSP"/>
                    <asp:BoundField DataField="NgayTao" HeaderText="Ngày tạo" SortExpression="NgayTao"/>
                    <asp:BoundField DataField="NgayHuy" HeaderText="Ngày hủy" SortExpression="NgayHuy"/>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="btnDelete" runat="server" CommandArgument='<%# Eval("MaSP") %>' OnClientClick="return confirm('Bạn có muốn xóa dòng này?');" OnClick="btnDelete_Click" >Delete</asp:LinkButton>
                            <asp:LinkButton ID="btnEdit" runat="server" CommandArgument='<%# Eval("MaSP") + "," + Eval("TenSP") + "," + Eval("MauID") + "," + Eval("SizeID") + "," + Eval("ChatLieuID")
                                    + "," + Eval("AnhSP") + "," + Eval("SoLuongSP") + "," + Eval("GiaSP") + "," + Eval("MoTaSP") + "," + Eval("NgayTao") + "," + Eval("NgayHuy")%>' OnClick="btnEdit_Click">Edit</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

<HeaderStyle CssClass="header-gv"></HeaderStyle>

<RowStyle CssClass="rows-gv"></RowStyle>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

