using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace pms1
{
    
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=JANITA\SQLEXPRESS;Initial Catalog=pms;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           // label1.Text = Session["id"].ToString();
        }

        protected void login_button_Click(object sender, EventArgs e)
        {
           Session["id"] = inputUserName.Text;
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT * FROM [login_1] WHERE userId=@u AND password=@p",con);
                cmd.Parameters.Add("@u", SqlDbType.VarChar, 10, "userId").Value = inputUserName.Text.ToUpper();
                cmd.Parameters.Add("@p", SqlDbType.VarChar, 255, "password").Value = inputPassword.Text;
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    
                    string ut = (string)dr["usertype"];
                    dr.Close();
                    if (ut == "student")
                    {
                        SqlCommand cm = new SqlCommand("SELECT * FROM [student_details] WHERE userId=@u",con);
                        cm.Parameters.Add("@u", SqlDbType.VarChar, 10, "userId").Value = inputUserName.Text.ToUpper();
                        SqlDataReader s = cm.ExecuteReader();
                        if (s.HasRows)
                        {
                            s.Close();
                            Response.Redirect("student_home.aspx");
                            
                        }
                        else
                        {
                            s.Close();
                            Response.Redirect("details_page.aspx");
                        }
                        s.Close();
                    }else if(ut == "admin")
                    {
                        Response.Redirect("admin.aspx");
                    }
                    dr.Close();
                }
                else
                {
                    label1.Text = "ENTER VALID USERID AND PASSWORD";
                }
            }
            catch (Exception ex)
            {
                label1.Text = ex.Message;
            }
            con.Close();
            
        }
    }
}