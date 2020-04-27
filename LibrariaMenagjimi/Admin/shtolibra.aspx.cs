using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
namespace LibrariaMenagjimi.Admin
{
    public partial class shtolibra : System.Web.UI.Page
    {
        SqlConnection sqlConn = new SqlConnection(sqllidhja.sqllidhja1);
        protected void Page_Load(object sender, EventArgs e)
        {

            //mbushe();
        }
        //public void mbushe()
        //{
        //    DropDownList1.DataSource = merr();
        //    DropDownList1.DataTextField = "Autori";
        //    DropDownList1.DataValueField = "AutoriID";
        //    DropDownList1.DataBind();
        //}
        //public DataTable merr()
        //{
        //    SqlCommand cmd;
        //    DataTable dt;
        //    SqlDataAdapter da;
        //    cmd = new SqlCommand("merrautor", sqlConn);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    da = new SqlDataAdapter(cmd);
        //    dt = new DataTable();
        //    da.Fill(dt);
        //    return dt;
                
        //}
        protected void butonishtolibra_Click(object sender, EventArgs e)
        {
            //int idautori=0;
            try
            {
                if (txttitullilibrit.Text is null || txtpershkrimi.Text == "")
                {
                    labelerror.Text = "Ju lutem mbushni te dhena";
                }
                else
                {
                    SqlCommand sqlComm = new SqlCommand("shtolibertest", sqlConn);
                    sqlComm.CommandType = CommandType.StoredProcedure;
                    sqlComm.Parameters.AddWithValue("@titulli", txttitullilibrit.Text);
                    sqlComm.Parameters.AddWithValue("@autori", DropDownList1.Text);

                    sqlComm.Parameters.AddWithValue("@pershkrimi", txtpershkrimi.Text);
                    sqlComm.Parameters.AddWithValue("@gjinialetrare",  dropgjinia.Text);
                    sqlConn.Open();
                    sqlComm.ExecuteNonQuery();
                    sqlConn.Close();
                    Response.Redirect("shtolibra.aspx");
                }
            }
            catch (Exception errori)
            {

                labelerror.Text = "Tedhenat nuk u ruajten error mesazhi:" + errori;
            }

        
        }
    }
}