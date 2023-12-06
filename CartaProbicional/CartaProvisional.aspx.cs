using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Collections;
using System.Globalization;

namespace CartaProbicional
{
    public partial class CartaProbicional : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        public Boolean validarUsuario() 
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["coonBd"].ConnectionString)) 
            {
                try
                {
                    conn.Open();
                    string cadena = "select*from Alumno where numeroControl='"+txtNumeroControl.Text+"'";
                    SqlCommand comando = new SqlCommand(cadena, conn);
                    SqlDataReader registro = comando.ExecuteReader();
                    if (registro.Read())
                    {
                        return false;
                        
                    }
                    else 
                    {
                        insertarDomicilio();
                        return true;
                    }
                    conn.Close();
                }
                catch (Exception ex) 
                {
                    //mensajexdxd.Text = ex.Message;
                    return false;
                }
            }
        }
        public void insertarDomicilio()
        {

            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["coonBd"].ConnectionString))
            {
                try
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "insertarAlumno";
                    cmd.Parameters.Add("@numeroControl", SqlDbType.VarChar).Value = txtNumeroControl.Text.Trim();
                    cmd.Parameters.Add("@nombre", SqlDbType.VarChar).Value = txtNombre.Text.Trim();
                    cmd.Parameters.Add("@apellidoP", SqlDbType.VarChar).Value = txtApellidoPaterno.Text.Trim();
                    cmd.Parameters.Add("@apellidoM", SqlDbType.VarChar).Value = txtApellidoMaterno.Text.Trim();
                    cmd.Parameters.Add("@carrera", SqlDbType.VarChar).Value = txtCarrera.SelectedItem.ToString();
                    cmd.Parameters.Add("@genero", SqlDbType.VarChar).Value = txtGenero.SelectedItem.ToString();
                    cmd.Parameters.Add("@correoElectronico", SqlDbType.VarChar).Value = txtCorreo.Text.Trim();
                    cmd.Parameters.Add("@whatsap", SqlDbType.VarChar).Value = txtTelefono.Text.Trim();
                    cmd.Connection = conn;
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
                catch (Exception ex)
                {
                    //txtCorreo.Text = ex.Message.ToString();
                }
            }
        }
        protected void BtnGenerar_Click(object sender, EventArgs e)
        {
            if (txtNumeroControl.Text.Equals("") || txtNombre.Text.Equals("") || txtCorreo.Text.Equals("") || txtTelefono.Text.Equals(""))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Rellena todos los campos!')", true);
            }
            else
            {

                //validarUsuario();
                if (validarUsuario().Equals(true)) 
                {
                    Response.Redirect("ReporteCrystal.aspx?parametro=" + txtNumeroControl.Text);
                }
                else 
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Tu registro ya existe, pide al administrador que te elimine en caso que quieras registrate otra vez')", true);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("sesion.aspx");
        }

        protected void txtNombre_TextChanged(object sender, EventArgs e)
        {
            txtNombre.Text = CultureInfo.CurrentUICulture.TextInfo.ToTitleCase(txtNombre.Text.ToLower());
        }

        protected void txtApellidoPaterno_TextChanged(object sender, EventArgs e)
        {
            txtApellidoPaterno.Text = CultureInfo.CurrentUICulture.TextInfo.ToTitleCase(txtApellidoPaterno.Text.ToLower());
        }

        protected void txtApellidoMaterno_TextChanged(object sender, EventArgs e)
        {
            txtApellidoMaterno.Text = CultureInfo.CurrentUICulture.TextInfo.ToTitleCase(txtApellidoMaterno.Text.ToLower());
        }
    }
}