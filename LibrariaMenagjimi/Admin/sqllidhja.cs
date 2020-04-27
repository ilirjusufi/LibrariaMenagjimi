using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace LibrariaMenagjimi.Admin
{
     class sqllidhja
    {
        public static string sqllidhja1
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["librariaConnectionString"].ConnectionString;
            }
        }
    }
}