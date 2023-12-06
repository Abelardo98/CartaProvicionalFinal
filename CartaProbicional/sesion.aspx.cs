using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CartaProbicional
{
    public partial class sesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BTN_LOGIN_Click(object sender, EventArgs e)
        {
            loginAdmin();
        }
        public void loginAdmin()
        {

            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["coonBd"].ConnectionString))
            {

                try
                {

                    DataTable dt = new DataTable();
                    DataSet ds = new DataSet();
                    conn.Open();
                    //SqlCommand consulta = new SqlCommand("select * from usuarios where username = '" + txtusername.Text + "';; ", conn);
                    SqlCommand consulta = new SqlCommand("select * from usuarios where usuario='" + txtusername.Text + "'; ", conn);

                    ArrayList lista = new ArrayList();
                    SqlDataAdapter con = new SqlDataAdapter(consulta);


                    con.Fill(ds);
                    dt = ds.Tables[0];
                    dt.AcceptChanges();
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    if (validarContrasenia() == true)
                    {
                        Server.Transfer("vista.aspx");
                        
                    }
                    else 
                    {
                        mensaje.Text = "Usuario o contraseña incorrectos";
                    }
                }
                catch (Exception ex)
                {
                    
                }

            }

        }
        public Boolean validarContrasenia()
        {
            if (GridView1.Rows.Count == 0)
            {

                return false;
            }
            else
            {
                foreach (GridViewRow row in GridView1.Rows)
                {

                    if (row.Cells[1].Text.Equals(txtpasword.Text))
                    {

                        return true;


                    }
                    else
                    {

                        return false;


                    }

                }
            }
            return false;
        }
    }
}