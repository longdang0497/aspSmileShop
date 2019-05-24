using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SmileShop.Database;

public partial class DMSize : System.Web.UI.Page
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
            
            dt = SmileShop.Database.Size.Thongtin_Size();

            gvSize.DataSource = dt;
            gvSize.DataBind();
        }
        catch (SqlException e)
        {
            Console.WriteLine(e.Message);
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string str = tbTenSize.Text;
        try
        {
            gvSize.DataSource = null;
            DataTable dt = new DataTable();
            dt = SmileShop.Database.Size.Thongtin_Size_ByTuKhoa(str);

            gvSize.DataSource = dt;
            gvSize.DataBind();
        } catch (SqlException ex)
        {
            Console.WriteLine(ex.Message);
            lbError.Text = "There's something wrong.";
        }
    }

    public void Clear()
    {
        hfSizeID.Value = "";
        tbTenSize.Text = "";
        lbSuccess.Text = lbError.Text = "";
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        bool res = false;
        try
        {
            if (btnSave.Text == "Save")
                Size.Size_Insert(tbTenSize.Text, 0);
            else
                Size.Size_Update(Convert.ToInt32(hfSizeID.Value), tbTenSize.Text);
            res = true;
            Clear();
        } catch (Exception ex)
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
            Size.Size_Delete(id);
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
        hfSizeID.Value = a[0];
        tbTenSize.Text = a[1];
        btnSave.Text = "Update";
    }
}