using SmileShop.Database;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class DMSanPham : System.Web.UI.Page
{
    string connString = ConfigurationManager.AppSettings["ConnectionString"];
    string ltrHtmlImgHead = "<img style='width:100px; height=100px;' src='/assets/SanPham/";
    string ltrHtmlImgTail = @"'/>";
    string imgFileName = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        SmileShop.Database.SqlDatabase.ConnectionString = connString;
        
        if (!IsPostBack)
        {
            ShowData();
            ShowMau();
            ShowSize();
            ShowChatLieu();
            Clear();
        }

    }

    #region Phương thức đổ dữ liệu
    public void ShowData()
    {
        try
        {
            DataTable dt = new DataTable();

            dt = SmileShop.Database.SanPham.Thongtin_Sanpham();

            gvSanPham.DataSource = dt;
            gvSanPham.DataBind();
        }
        catch (SqlException e)
        {
            Console.WriteLine(e.Message);
        }
    }

    public void ShowMau()
    {
        try
        {
            DataTable dt = new DataTable();

            dt = SmileShop.Database.Mau.Thongtin_Mau();

            ddlMau.Items.Clear();
            ddlMau.Items.Add(new ListItem("Chọn màu", "0"));

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ddlMau.Items.Add(new ListItem(dt.Rows[i]["TenMau"].ToString(), dt.Rows[i]["MauID"].ToString()));
            }
        }
        catch (SqlException e)
        {
            Console.WriteLine(e.Message);
        }
    }

    public void ShowSize()
    {
        try
        {
            DataTable dt = new DataTable();

            dt = SmileShop.Database.Size.Thongtin_Size();

            ddlSize.Items.Clear();
            ddlSize.Items.Add(new ListItem("Chọn size", "0"));

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ddlSize.Items.Add(new ListItem(dt.Rows[i]["TenSize"].ToString(), dt.Rows[i]["SizeID"].ToString()));
            }
        }
        catch (SqlException e)
        {
            Console.WriteLine(e.Message);
        }
    }

    public void ShowChatLieu()
    {
        try
        {
            DataTable dt = new DataTable();

            dt = SmileShop.Database.ChatLieu.Thongtin_ChatLieu();

            ddlChatLieu.Items.Clear();
            ddlChatLieu.Items.Add(new ListItem("Chọn chất liệu", "0"));

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ddlChatLieu.Items.Add(new ListItem(dt.Rows[i]["TenChatLieu"].ToString(), dt.Rows[i]["ChatLieuID"].ToString()));
            }
        }
        catch (SqlException e)
        {
            Console.WriteLine(e.Message);
        }
    }
    #endregion

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (tbTenSanPham.Text == "")
            lbError.Text = "Bạn chưa nhập dữ liệu để tìm.";
        else
        {
            try
            {
                gvSanPham.DataSource = null;
                DataTable dt = new DataTable();
                dt = SmileShop.Database.SanPham.Thongtin_Sanpham_ByTuKhoa(tbTenSanPham.Text);
                if (dt.Rows.Count == 0) lbError.Text = "Not Found.";
                gvSanPham.DataSource = dt;
                gvSanPham.DataBind();
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
                lbError.Text = "There's something wrong.";
            }
        }
    }

    public void Clear()
    {
        tbTenSanPham.Text = "";
        tbSoLuong.Text = "";
        taMoTa.InnerText = "";
        tbGiaBan.Text = "";
        tbNgayTao.Text = DateTime.Now.ToString("dd/MM/yyyy hh:mm:ss tt");
        tbNgayHuy.Text = DateTime.Now.ToString("dd/MM/yyyy hh:mm:ss tt");
        lbSuccess.Text = lbError.Text = "";
        ltrHinh.Text = "";
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        bool res = false;
        try
        {            
            int mauID = Convert.ToInt32(ddlMau.SelectedValue);
            int sizeID = Convert.ToInt32(ddlSize.SelectedValue);
            int chatlieuID = Convert.ToInt32(ddlChatLieu.SelectedValue);

            string ngaytao = tbNgayTao.Text;
            string ngayhuy = tbNgayHuy.Text;
            DateTime dtTao = DateTime.Parse(ngaytao);
            DateTime dtHuy = DateTime.Parse(ngayhuy);

            if (btnSave.Text == "Save")
            {
                if (fuHinh.FileContent.Length > 0)
                {
                    if (fuHinh.FileName.EndsWith(".png") || fuHinh.FileName.EndsWith(".gif")
                        || fuHinh.FileName.EndsWith(".jpg") || fuHinh.FileName.EndsWith(".jpeg"))
                    {
                        fuHinh.SaveAs(Server.MapPath("assets/SanPham/") + fuHinh.FileName);
                    }
                }                

                SanPham.Sanpham_Insert(tbTenSanPham.Text, mauID, sizeID, chatlieuID, fuHinh.FileName.ToString(),
                    Convert.ToInt32(tbSoLuong.Text), Convert.ToInt32(tbGiaBan.Text), taMoTa.InnerText,
                    dtTao, dtHuy, 0);
                res = true;
            }
            else if (btnSave.Text == "Update")
            {
                if (fuHinh.FileContent.Length > 0)
                {
                    if (fuHinh.FileName.EndsWith(".png") || fuHinh.FileName.EndsWith(".gif")
                        || fuHinh.FileName.EndsWith(".jpg") || fuHinh.FileName.EndsWith(".jpeg"))
                    {
                        fuHinh.SaveAs(Server.MapPath("assets/SanPham/") + fuHinh.FileName);
                    }
                    ltrHinh.Text = "";

                    SanPham.Sanpham_Update(Convert.ToInt32(hfSanPhamID.Value), tbTenSanPham.Text, mauID, sizeID, chatlieuID, fuHinh.FileName.ToString(),
                    Convert.ToInt32(tbSoLuong.Text), Convert.ToInt32(tbGiaBan.Text), taMoTa.InnerText,
                    dtTao, dtHuy);
                }
                else
                {
                    string temp = ltrHinh.Text.Replace(ltrHtmlImgHead, "");
                    imgFileName = temp.Replace(ltrHtmlImgTail, "");
                    SanPham.Sanpham_Update(Convert.ToInt32(hfSanPhamID.Value), tbTenSanPham.Text, mauID, sizeID, chatlieuID, imgFileName.Trim(),
                    Convert.ToInt32(tbSoLuong.Text), Convert.ToInt32(tbGiaBan.Text), taMoTa.InnerText,
                    dtTao, dtHuy);
                }
                
                res = true;
            }                        
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
            res = false;
        }

        if (res == true)
        {
            if (btnSave.Text == "Save")
                lbSuccess.Text = "Saved successfully!!";
            else if (btnSave.Text == "Update")
                lbSuccess.Text = "Updated successfully!!";
        }
        else
            lbError.Text = "There's something wrong. We cannot save your work";
    }

    protected void btnRefresh_Click(object sender, EventArgs e)
    {
        ShowData();
        ShowMau();
        ShowSize();
        ShowChatLieu();
        Clear();
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {        
        int id = Convert.ToInt32((sender as LinkButton).CommandArgument);
        bool res = false;
        try
        {
            SanPham.Sanpham_Delete(id);
            res = true;
            Clear();
        }
        catch (SqlException ex)
        {
            Console.WriteLine(ex.Message);
            res = false;
        }

        if (res == true)
            lbSuccess.Text = "Deleted successfully!!";
        else
            lbError.Text = "There's something wrong. We cannot save your work";
    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        string[] a = (sender as LinkButton).CommandArgument.ToString().Split(',');
        hfSanPhamID.Value = a[0];
        tbTenSanPham.Text = a[1];

        int mauID = Convert.ToInt32(a[2]);
        int sizeID = Convert.ToInt32(a[3]);
        int chatlieuID = Convert.ToInt32(a[4]);

        string[] str = GetTenSizeMauCL(mauID, sizeID, chatlieuID);

        ddlMau.SelectedIndex = ddlMau.Items.IndexOf(ddlMau.Items.FindByText(str[0]));
        ddlSize.SelectedIndex = ddlSize.Items.IndexOf(ddlSize.Items.FindByText(str[1]));
        ddlChatLieu.SelectedIndex = ddlChatLieu.Items.IndexOf(ddlChatLieu.Items.FindByText(str[2]));

        ltrHinh.Text = ltrHtmlImgHead + a[5] + ltrHtmlImgTail;
        
        tbSoLuong.Text = a[6];
        tbGiaBan.Text = a[7];

        string description = "";
        for (int i = 8; i < a.Length - 2; i++)
            description += a[i];

        taMoTa.InnerText = description;

        tbNgayHuy.Text = a[a.Length - 1];
        tbNgayTao.Text = a[a.Length - 2];
        btnSave.Text = "Update";
    }

    public string[] GetTenSizeMauCL(int mauID, int sizeID, int chatlieuID)
    {
        string[] result = new string[3];
        DataTable[] dt = new DataTable[3];
        string mau = "SELECT * FROM db_Mau WHERE MauID = " + mauID + ";";
        string size = "SELECT * FROM db_Size WHERE SizeID = " + sizeID + ";";
        string chatlieu = "SELECT * FROM db_ChatLieu WHERE ChatLieuID = " + chatlieuID + ";";

        OleDbCommand cmd1 = new OleDbCommand(mau);
        cmd1.CommandType = CommandType.Text;

        dt[0] = SmileShop.Database.SqlDatabase.GetData(cmd1);
        result[0] = dt[0].Rows[0][1].ToString();

        OleDbCommand cmd2 = new OleDbCommand(size);
        cmd2.CommandType = CommandType.Text;

        dt[1] = SmileShop.Database.SqlDatabase.GetData(cmd2);
        result[1] = dt[1].Rows[0][1].ToString();

        OleDbCommand cmd3 = new OleDbCommand(chatlieu);
        cmd3.CommandType = CommandType.Text;

        dt[2] = SmileShop.Database.SqlDatabase.GetData(cmd3);
        result[2] = dt[2].Rows[0][1].ToString();

        return result;
    }
}