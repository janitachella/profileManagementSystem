using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace pms1
{
    public partial class register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=JANITA\SQLEXPRESS;Initial Catalog=pms;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void button1_Click(object sender, EventArgs e)
        {
            // Session["id"] = inputUserName.Text;
            // Response.Redirect("login.aspx");
            try
            {
                con.Open();
                SqlCommand cm = new SqlCommand("SELECT * FROM [login_1] WHERE userId=@u", con);
                cm.Parameters.Add("@u", SqlDbType.VarChar, 10, "userId").Value = inputUserName.Text.ToUpper();
                SqlDataReader s = cm.ExecuteReader();
                if (s.Read())
                {
                    label1.Text = "YOU HAVE BEEN ALREADY REGISTERED";
                    

                }
                
                else
                {
                    s.Close();
                    SqlCommand cmd = new SqlCommand("INSERT INTO [login_1] (userId,password,usertype) VALUES (@u,@p,@ut)", con);
                    cmd.Parameters.Add("@u", SqlDbType.VarChar, 10, "userId").Value = inputUserName.Text.ToUpper();
                    cmd.Parameters.Add("@p", SqlDbType.VarChar, 255, "password").Value = inputPassword.Text;
                    cmd.Parameters.Add("@ut", SqlDbType.VarChar, 10, "usertype").Value = "student";
                    int query = cmd.ExecuteNonQuery();
                    if (query > 0)
                    {
                        label1.Text = "REGISTERED SUCCESSFULLY";
                        inputUserName.Text = string.Empty;
                        inputPassword.Text = string.Empty;
                        inputPassword_1.Text = string.Empty;
                    }
                    else
                    {
                        label1.Text = "REGISTERATION FAILED";
                    }
                    
                }
               
            }
            catch(Exception ex)
            {
                label1.Text = ex.Message;
            }
            con.Close();
           
        }
    }
}