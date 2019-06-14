using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SmileShop.Database
{
    /// <summary>
    /// Class Sản phẩm
    /// </summary>
    public class ChatLieu
    {
        #region Phương thức xóa chất liệu theo ID
        /// <summary>
        /// Phương thức xóa chất liệu theo ID 
        /// </summary>
        /// <param name="id">Mã chất liệu cần xóa</param>
        public static void ChatLieu_Delete(int id)
        {
            try
            {
                OleDbCommand cmd = new OleDbCommand("chatlieu_delete");
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@chatlieuid", id);

                SqlDatabase.ExecuteNoneQuery(cmd);
            } catch (SqlException) { }
            catch(Exception) { }
        }
        #endregion

        #region Phương thức thêm mới ChatLieu
        /// <summary>
        /// Phương thức thêm mới chất liệu
        /// </summary>
        /// <param name="tenChatLieu"></param>
        /// <param name="ret"></param>
        public static void ChatLieu_Insert(string tenChatLieu, int ret = 0)
        {            
            try
            {
                OleDbCommand cmd = new OleDbCommand("chatlieu_insert");
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@tenChatLieu", tenChatLieu);
                cmd.Parameters.AddWithValue("@ret", ret);

                SqlDatabase.ExecuteNoneQuery(cmd);
            }
            catch (SqlException) { }
            catch (Exception) { }
        }
        #endregion

        #region Phương thức cập nhật ChatLieu mới
        /// <summary>
        /// Phương thức cập nhật chất liệu mới
        /// </summary>
        /// <param name="ChatLieuid"></param>
        /// <param name="tenChatLieu"></param>
        public static void ChatLieu_Update(int ChatLieuid, string tenChatLieu)
        {            
            try
            {
                OleDbCommand cmd = new OleDbCommand("chatlieu_update");
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@chatlieuid", ChatLieuid);
                cmd.Parameters.AddWithValue("@tenchatlieu", tenChatLieu);

                SqlDatabase.ExecuteNoneQuery(cmd);
            }
            catch (SqlException) { }
            catch (Exception) { }
        }
        #endregion

        #region Phương thức lấy danh sách chất liệu
        /// <summary>
        /// Phương thức lấy danh sách chất liệu
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_ChatLieu()
        {
            OleDbCommand cmd = null;
            try
            {
                cmd = new OleDbCommand("thongtin_chatlieu");
                cmd.CommandType = CommandType.StoredProcedure;                
            }
            catch (SqlException) { }
            catch (Exception) { }

            return SqlDatabase.GetData(cmd);
        }
        #endregion      

        # region Phương thức trả về bảng chứa các chất liệu tìm theo id
        /// <summary>
        /// Phương thức trả về bảng chứa các chất liệu tìm theo id
        /// </summary>
        /// <param name="str">id muốn tìm</param>
        /// <returns></returns>
        public static DataTable Thongtin_ChatLieu_ByID(int id)
        {
            OleDbCommand cmd = null;
            try
            {
                cmd = new OleDbCommand("thongtin_ChatLieu_by_id");
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@chatlieuid", id);                
            }
            catch (SqlException) { }
            catch (Exception) { }

            return SqlDatabase.GetData(cmd);
        }
        #endregion

        # region Phương thức trả về bảng chứa các chất liệu tìm theo từ khóa
        /// <summary>
        /// Phương thức trả về bảng chứa các chất liệu tìm theo từ khóa
        /// </summary>
        /// <param name="str">từ khóa muốn tìm</param>
        /// <returns></returns>
        public static DataTable Thongtin_ChatLieu_ByTuKhoa(string str)
        {
            OleDbCommand cmd = null;
            try
            {
                cmd = new OleDbCommand("thongtin_chatlieu_by_tukhoa");
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