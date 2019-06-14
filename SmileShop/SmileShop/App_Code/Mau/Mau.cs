using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;
using System.Data.SqlClient;

namespace SmileShop.Database
{
    /// <summary>
    /// Summary description for Màu
    /// </summary>
    public class Mau
    {
        #region Phương thức xóa màu theo ID
        /// <summary>
        /// Phương thức xóa màu theo ID 
        /// </summary>
        /// <param name="id">Mã màu cần xóa</param>
        public static void Mau_Delete(int id)
        {            
            try
            {
                OleDbCommand cmd = new OleDbCommand("mau_delete");
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@mauid", id);

                SqlDatabase.ExecuteNoneQuery(cmd);
            }
            catch (SqlException) { }
            catch (Exception) { }
        }
        #endregion

        #region Phương thức thêm mới màu
        /// <summary>
        /// Phương thức thêm mới màu
        /// </summary>
        /// <param name="tenmau"></param>
        /// <param name="ret"></param>
        public static void Mau_Insert(string tenmau, int ret = 0)
        {
            try
            {
                OleDbCommand cmd = new OleDbCommand("mau_insert");
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@tenmau", tenmau);
                cmd.Parameters.AddWithValue("@ret", ret);

                SqlDatabase.ExecuteNoneQuery(cmd);
            }
            catch (SqlException) { }
            catch (Exception) { }
        }
        #endregion

        #region Phương thức cập nhật màu mới
        /// <summary>
        /// Phương thức cập nhật màu mới
        /// </summary>
        /// <param name="mauid"></param>
        /// <param name="tenmau"></param>
        public static void Mau_Update(int mauid, string tenmau)
        {
            
            try
            {
                OleDbCommand cmd = new OleDbCommand("mau_update");
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@mauid", mauid);
                cmd.Parameters.AddWithValue("@tenmau", tenmau);

                SqlDatabase.ExecuteNoneQuery(cmd);
            }
            catch (SqlException) { }
            catch (Exception) { }
        }
        #endregion

        #region Phương thức lấy danh sách màu
        /// <summary>
        /// Phương thức lấy danh sách màu
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_Mau()
        {
            OleDbCommand cmd = null;

            try
            {
                cmd = new OleDbCommand("thongtin_mau");
                cmd.CommandType = CommandType.StoredProcedure;
            }
            catch (SqlException) { }
            catch (Exception) { }

            return SqlDatabase.GetData(cmd);
        }
        #endregion      

        # region Phương thức trả về bảng chứa các màu tìm theo id
        /// <summary>
        /// Phương thức trả về bảng chứa các màu tìm theo id
        /// </summary>
        /// <param name="id">id màu muốn tìm</param>
        /// <returns></returns>
        public static DataTable Thongtin_mau_ByID(int id)
        {
            OleDbCommand cmd = null;

            try
            {
                cmd = new OleDbCommand("thongtin_mau_by_id");
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@mauid", id);
            }
            catch (SqlException) { }
            catch (Exception) { }

            return SqlDatabase.GetData(cmd);
        }
        #endregion

        # region Phương thức trả về bảng chứa các màu tìm theo từ khóa
        /// <summary>
        /// Phương thức trả về bảng chứa các màu tìm theo từ khóa
        /// </summary>
        /// <param name="str">từ khóa muốn tìm</param>
        /// <returns></returns>
        public static DataTable Thongtin_Mau_ByTuKhoa(string str)
        {
            OleDbCommand cmd = null;
            try
            {
                cmd = new OleDbCommand("thongtin_mau_by_tukhoa");
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@TuKhoa", str);
            }
            catch (SqlException) { }
            catch (Exception) { }

            return SqlDatabase.GetData(cmd);
        }
        #endregion
    }
}