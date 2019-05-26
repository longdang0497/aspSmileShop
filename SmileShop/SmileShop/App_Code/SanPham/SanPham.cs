using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;

namespace SmileShop.Database
{
    /// <summary>
    /// Class Sản phẩm
    /// </summary>
    public class SanPham
    {
        #region Phương thức xóa sản phẩm theo ID
        /// <summary>
        /// Phương thức xóa sản phẩm theo ID
        /// </summary>
        /// <param name="masp">Mã sản phẩm cần xóa</param>
        public static void Sanpham_Delete(int masp)
        {
            OleDbCommand cmd = new OleDbCommand("sanpham_delete");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@masp", masp);

            SqlDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức thêm mới sản phẩm
        /// <summary>
        /// Phương thức thêm mới sản phẩm
        /// </summary>
        /// <param name="tensp"></param>
        /// <param name="mauID"></param>
        /// <param name="sizeID"></param>
        /// <param name="chatieuID"></param>
        /// <param name="anhsanpham"></param>
        /// <param name="soluongsp"></param>
        /// <param name="giasp"></param>
        /// <param name="motasp"></param>
        /// <param name="ngaytao"></param>
        /// <param name="ngayhuy"></param>
        /// <param name="ret"></param>
        public static void Sanpham_Insert(
            string tensp,
            int mauID,
            int sizeID,
            int chatieuID,
            string anhsanpham,
            int soluongsp,
            float giasp,
            string motasp,
            DateTime ngaytao,
            DateTime ngayhuy,
            int ret)
        {
            OleDbCommand cmd = new OleDbCommand("sanpham_insert");
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@tensp", tensp);
            cmd.Parameters.AddWithValue("@mauID", mauID);
            cmd.Parameters.AddWithValue("@sizeID", sizeID);
            cmd.Parameters.AddWithValue("@chatieuID", chatieuID);
            cmd.Parameters.AddWithValue("@anhsanpham", anhsanpham);
            cmd.Parameters.AddWithValue("@soluongsp", soluongsp);
            cmd.Parameters.AddWithValue("@giasp", giasp);
            cmd.Parameters.AddWithValue("@motasp", motasp);
            cmd.Parameters.AddWithValue("@ngaytao", ngaytao);
            cmd.Parameters.AddWithValue("@ngayhuy", ngayhuy);
            cmd.Parameters.AddWithValue("@ret", ret);

            SqlDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức cập nhật sản phẩm mới
        /// <summary>
        /// Phương thức cập nhật sản phẩm mới
        /// </summary>
        /// <param name="masp"></param>
        /// <param name="tensp"></param>
        /// <param name="mauID"></param>
        /// <param name="sizeID"></param>
        /// <param name="chatieuID"></param>
        /// <param name="anhsanpham"></param>
        /// <param name="soluongsp"></param>
        /// <param name="giasp"></param>
        /// <param name="motasp"></param>
        /// <param name="ngaytao"></param>
        /// <param name="ngayhuy"></param>
        public static void Sanpham_Update(
            int masp,
            string tensp,
            int mauID,
            int sizeID,
            int chatieuID,
            string anhsanpham,
            int soluongsp,
            float giasp,
            string motasp,
            DateTime ngaytao,
            DateTime ngayhuy)
        {
            OleDbCommand cmd = new OleDbCommand("sanpham_update");
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@masp", masp);
            cmd.Parameters.AddWithValue("@tensp", tensp);
            cmd.Parameters.AddWithValue("@mauID", mauID);
            cmd.Parameters.AddWithValue("@sizeID", sizeID);
            cmd.Parameters.AddWithValue("@chatieuID", chatieuID);
            cmd.Parameters.AddWithValue("@anhsanpham", anhsanpham);
            cmd.Parameters.AddWithValue("@soluongsp", soluongsp);
            cmd.Parameters.AddWithValue("@giasp", giasp);
            cmd.Parameters.AddWithValue("@motasp", motasp);
            cmd.Parameters.AddWithValue("@ngaytao", ngaytao);
            cmd.Parameters.AddWithValue("@ngayhuy", ngayhuy);

            SqlDatabase.ExecuteNoneQuery(cmd);
        }
        #endregion

        #region Phương thức lấy danh sách Sản phẩm
        /// <summary>
        /// Phương thức lấy danh sách Sản phẩm
        /// </summary>
        /// <returns></returns>
        public static DataTable Thongtin_Sanpham()
        {
            OleDbCommand cmd = new OleDbCommand("thongtin_sanpham");
            cmd.CommandType = CommandType.StoredProcedure;

            return SqlDatabase.GetData(cmd);
        }
        #endregion

        # region Phương thức trả về bảng chứa các sản phẩm tìm theo ID
        /// <summary>
        /// Phương thức trả về bảng chứa các sản phẩm tìm theo ID
        /// </summary>
        /// <param name="masp">Mã sản phẩm cần tìm</param>
        /// <returns></returns>
        public static DataTable Thongtin_Sanpham_ByID(string masp)
        {
            OleDbCommand cmd = new OleDbCommand("thongtin_sanpham_by_id");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@MaSP", masp);

            return SqlDatabase.GetData(cmd);
        }
        #endregion        

        # region Phương thức trả về bảng chứa các sản phẩm tìm theo từ khóa
        /// <summary>
        /// Phương thức trả về bảng chứa các sản phẩm tìm theo từ khóa
        /// </summary>
        /// <param name="str">từ khóa muốn tìm</param>
        /// <returns></returns>
        public static DataTable Thongtin_Sanpham_ByTuKhoa(string str)
        {
            OleDbCommand cmd = new OleDbCommand("thongtin_sanpham_by_tukhoa");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@TuKhoa", str);

            return SqlDatabase.GetData(cmd);
        }
        #endregion
    }
}