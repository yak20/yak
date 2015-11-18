using System;
using System.Linq;
using System.Web;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.IO;
using System.Web.Services;

namespace WebService1
{
    /// <summary>
    /// Summary description for Service1
    /// </summary>
   
    [WebService(Namespace = "http://localhost/myWebService1")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Service1 : System.Web.Services.WebService
    {
     
       
 
        OleDbConnection connection = new OleDbConnection();
        public string connectionString = @"Provider=Microsoft.Jet.OLEDB.4.0; data source=I:\ВЕББ\ВЕББ\lab6\lab6\stud1.mdb";
        OleDbCommand command;

        
        [WebMethod]
        public List<Student> Get_Students()
        {
            connection = new OleDbConnection(connectionString);
            connection.Open();
            command = new OleDbCommand();
            command.Connection = connection;
            command.CommandText = "Select * from Students";

            OleDbDataReader reader = command.ExecuteReader();


            List<Student> students = new List<Student>();

            while (reader.Read())
            {


                Student st = new Student();

                st.Name = reader["ФИО"].ToString();
                st.Age = reader["Возраст"].ToString();
                st.CodeS = reader["КодС"].ToString();
                st.CodeG = reader["КодГ"].ToString();

                students.Add(st);
            }

            reader.Close();
            connection.Close();
            return students;
        }
        

       
   public class Person
        {
            private String name;
            private String age;

            public Person(String Name, String Age)
            {
                name = Name;
                age = Age;
            }
            public Person() { }
            public String Name
            {
                get { return name; }
                set { name = value; }
            }
            public String Age
            {
                get { return age; }
                set { age = value; }
            }
            public virtual String getInformation()
            {
                return "ФИО: " + name + ", возраст: " + age;
            }
            
        }

  

        public class Student : Person
        {

            public string CodeG { get; set; }
            public string CodeS { get; set; }
              }

        
    }
}
        