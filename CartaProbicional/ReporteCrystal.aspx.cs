using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace CartaProbicional
{
    public partial class ReporteCrystal : System.Web.UI.Page
    {
        DataTable dt;
        SqlDataAdapter da;

        protected void Page_Load(object sender, EventArgs e)
        { 
            if (Request.Params["parametro"] != null)
            {
                txtNumeroControl.Text = Request.Params["parametro"];
                
                
                //txtNumeroControl.Text = Request.Params["parametro"];   
            }
            else 
            {
                txtNumeroControl.Text = "Error en el parametro";
            }
            llenarTabla();
            llenarDatos();

        }

        
        public void llenarTabla()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["coonBd"].ConnectionString))
            {
                try
                {
                    da = new SqlDataAdapter("select numeroControl, nombre, apellidoP, apellidoM, carrera from Alumno where numeroControl='"+txtNumeroControl.Text+"';", conn);
                    dt = new DataTable();
                    da.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    //Label1.Text = ex.Message;
                }

            }

        }
        public void llenarDatos()
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                DateTime dateTime = DateTime.UtcNow.Date;
                //Label1.Text = row.Cells[0].Text;
                CrystalReport1 reporte = new CrystalReport1();
                reporte.SetParameterValue("@numeroControl", HttpUtility.HtmlDecode(row.Cells[0].Text));
                reporte.SetParameterValue("@nombre", HttpUtility.HtmlDecode(row.Cells[1].Text));
                reporte.SetParameterValue("@apellidoP", HttpUtility.HtmlDecode(row.Cells[2].Text));
                reporte.SetParameterValue("apellidoM", HttpUtility.HtmlDecode(row.Cells[3].Text));
                reporte.SetParameterValue("@carrera", HttpUtility.HtmlDecode(row.Cells[4].Text));
                reporte.SetParameterValue("@fecha", dateTime.ToString("dd/MM/yyyy"));
                CrystalReportViewer1.ReportSource = reporte;
            
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}