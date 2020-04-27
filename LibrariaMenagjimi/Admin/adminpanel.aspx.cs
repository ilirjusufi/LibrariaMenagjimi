using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace LibrariaMenagjimi.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection lidhe = new SqlConnection(sqllidhja.sqllidhja1);
            lidhe.Open();
            SqlCommand cmd = new SqlCommand("SELECT COUNT (*) FROM Librat", lidhe );
            SqlCommand cmd1 = new SqlCommand("SELECT COUNT (*) FROM Autort", lidhe); 
            SqlCommand cmd2 = new SqlCommand("select top 1 Autori  from Autort order by AutoriID desc", lidhe);
            SqlCommand cmd3 = new SqlCommand("select top 1 TitulliLibri from Librat order by LibraID desc", lidhe);
            Object temp = cmd.ExecuteScalar();
            Object temp1 = cmd1.ExecuteScalar();
            Object temp2 = cmd2.ExecuteScalar();
            Object temp3 = cmd3.ExecuteScalar();
            Label1.Text= temp.ToString();
            labelautort.Text = temp1.ToString();
            labelautorifundit.Text = temp2.ToString();
            labellibraefundit.Text = temp3.ToString();
            
            lidhe.Close();
            
        }
    }
}