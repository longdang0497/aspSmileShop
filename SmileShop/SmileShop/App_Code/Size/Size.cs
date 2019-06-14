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
    /// Class Sản phẩm
    /// </summary>
    public class Size
    {
        #region Phương thức xóa size theo ID
        /// <summary>
        /// Phương thức xóa size theo ID 
        /// </summary>
        /// <param name="id">Mã size cần xóa</param>
        public static void Size_Delete(int id)
        {         
            try
            {
                OleDbCommand cmd = new OleDbCommand("size_delete");
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@sizeid", id);

                SqlDatabase.ExecuteNoneQuery(cmd);
            }
            catch (SqlException) { }
            catch (Exception) { }
        }
        #endregion

        #region Phương thức thêm mới size
        /// <summary>
        /// Phương thức thêm mới size
        /// </summary>
        /// <param name="tensize"></param>
        /// <param name="ret"></param>
        public static void Size_Insert(string tensize, int ret = 0)
        {            
            try
            {
                OleDbCommand cmd = new OleDbCommand("size_insert");
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@tensize", tensize);
                cmd.Parameters.AddWithValue("@ret", ret);

                SqlDatabase.ExecuteNoneQuery(cmd);
            }
            catch (SqlException) { }
            catch (Exception) { }
        }
        #endregion

        #region Phương thức cập nhật size mới
        /// <summary>
        /// Phương thức cập nhật size mới
        /// </summary>
        /// <param name="sizeid"></param>
        /// <param name="tensize"></param>
        public static void Size_Update(int sizeid, string tensize)
        {            
            try
            {
                OleDbCommand cmd = new OleDbCommand("size_update");
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@sizeid", sizeid);
                cmd.Parameters.AddWithValue("@tensize", tensize);

                SqlDatabase.ExecuteNoneQuery(cmd);
            }
            catch (SqlException) { }
            catch (Exception) { }
        }
        #endregion

        #region Phương thức lấy danh sách Size
        /// <summary>
        /// Phương thức lấy danh sách Size
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_Size()
        {
            OleDbCommand cmd = null;
            try
            {
                cmd = new OleDbCommand("thongtin_size");
                cmd.CommandType = CommandType.StoredProcedure;
            }
            catch (SqlException) { }
            catch (Exception) { }

            return SqlDatabase.GetData(cmd);
        }
        #endregion      

        # region Phương thức trả về bảng chứa các size tìm theo từ khóa
        /// <summary>
        /// Phương thức trả về bảng chứa các size tìm theo từ khóa
        /// </summary>
        /// <param name="str">từ khóa muốn tìm</param>
        /// <returns></returns>
        public static DataTable Thongtin_Size_ByTuKhoa(string str)
        {
            OleDbCommand cmd = null;

            try
            {
                cmd = new OleDbCommand("thongtin_size_by_tukhoa");
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