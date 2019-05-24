using SmileShop.Database;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DMMau : System.Web.UI.Page
{
    string connString = ConfigurationManager.AppSettings["ConnectionString"];
    protected void Page_Load(object sender, EventArgs e)
    {
        SmileShop.Database.SqlDatabase.ConnectionString = connString;
        if (!IsPostBack)
            ShowData();
    }

    public void ShowData()
    {
        try
        {
            DataTable dt = new DataTable();

            dt = SmileShop.Database.Mau.Thongtin_Mau();

            gvMau.DataSource = dt;
            gvMau.DataBind();
        }
        catch (SqlException e)
        {
            Console.WriteLine(e.Message);
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string str = tbTenMau.Text;
        if (str == "") lbError.Text = "Bạn chưa nhập dữ liệu để tìm.";
        else
        {
            try
            {
                gvMau.DataSource = null;
                DataTable dt = new DataTable();
                dt = SmileShop.Database.Mau.Thongtin_mau_ByTuKhoa(Convert.ToInt32(str));
                if (dt.Rows.Count == 0) lbError.Text = "Not Found.";
                gvMau.DataSource = dt;
                gvMau.DataBind();
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
        hfMauID.Value = "";
        tbTenMau.Text = "";
        lbSuccess.Text = lbError.Text = "";
        btnSave.Text = "Save";
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        bool res = false;
        try
        {
            if (btnSave.Text == "Save")
                Mau.Mau_Insert(tbTenMau.Text, 0);
            else
                Mau.Mau_Update(Convert.ToInt32(hfMauID.Value), tbTenMau.Text);
            res = true;
            Clear();
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
        Clear();
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32((sender as LinkButton).CommandArgument);
        bool res = false;
        try
        {
            Mau.Mau_Delete(id);
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
        hfMauID.Value = a[0];
        tbTenMau.Text = a[1];
        btnSave.Text = "Update";
    }
}