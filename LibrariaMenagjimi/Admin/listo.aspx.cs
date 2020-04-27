using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibrariaMenagjimi.Admin
{
    public partial class listo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection sqlConn = new SqlConnection(sqllidhja.sqllidhja1);
            sqlConn.Open();
            SqlCommand sqlComm = new SqlCommand("kerkotest3", sqlConn);
            sqlComm.CommandType = CommandType.StoredProcedure;
            sqlComm.Parameters.AddWithValue("@kerko", txtkerko.Text);
            sqlComm.ExecuteNonQuery();
            DataTable tabela = new DataTable();
            SqlDataAdapter adabteri = new SqlDataAdapter(sqlComm);
            adabteri.Fill(tabela);
            gridikerko.DataSource = tabela;
            gridikerko.DataBind();
            sqlConn.Close();

          
        }
    }
}