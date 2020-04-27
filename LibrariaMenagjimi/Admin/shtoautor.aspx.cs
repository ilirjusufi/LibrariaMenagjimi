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
    public partial class shtoautor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                if (shtetiautorittxt.Text is null || Emriautorittxt.Text == "")
                {
                    textlabel.Text = "Ju lutem mbushni te dhena";
                }
                else
                {
                    SqlConnection sqlConn = new SqlConnection(sqllidhja.sqllidhja1);
                    SqlCommand sqlComm = new SqlCommand("shtoautor", sqlConn);
                    sqlComm.CommandType = CommandType.StoredProcedure;
                    sqlComm.Parameters.AddWithValue("@shteti", shtetiautorittxt.Text);
                    sqlComm.Parameters.AddWithValue("@emri", Emriautorittxt.Text);

                    sqlConn.Open();
                    sqlComm.ExecuteNonQuery();
                    sqlConn.Close();


                    Response.Redirect("shtoautor.aspx");
                }
           
       
        }
    }
}