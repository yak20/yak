using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _Default : System.Web.UI.Page
    {
        public void Page_Load(object sender, EventArgs e)
        {
           
            var serv = new WebApplication1.localhost.Service1();
            foreach (var s in serv.Get_Students())
           
            {
                StudentList.Items.Add(s.Name);
                
                  }

          /*  System.Configuration.Configuration rootWebConfig =
                System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/Web.config");
            System.Configuration.ConnectionStringSettings connString;
            if (rootWebConfig.ConnectionStrings.ConnectionStrings.Count > 0)
            {
                connString =
                    rootWebConfig.ConnectionStrings.ConnectionStrings["NorthwindConnectionString"];
                if (connString != null)
                    Console.WriteLine("Northwind connection string = \"{0}\"",
                        connString.ConnectionString);
                else
                    Console.WriteLine("No Northwind connection string");
            }
            */
            

        }

        protected void StudentList_SelectedIndexChanged(object sender, EventArgs e)
        {
            

        }
    }
}