using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;





/* especificos del control */
using System.Windows.Input;
using System.Data;
using System.Data.SqlClient;

namespace MainSite.operaciones
{
    public partial class Venta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // fillFields();
            setFields();
        }

        private void setFields() 
        {
            // pregunto por el parametro id_Activo
            if (this.Context.Request.QueryString["cod_Activo"] != null)
            {

                SearchSym(this.Context.Request.QueryString["cod_Activo"].ToString());
            }

            // pregunto por el parametro precio
            if (this.Context.Request.QueryString["price"] != null)
            {
                price.Text = this.Context.Request.QueryString["price"].ToString();
            }

            //agrego atributos js
            this.price.Attributes.Add("OnChange", "javascript:return calculo(quant.value, this.value, subt);");

        }


        private void SearchSym(string Textvalue)
        {
                DataTable dt = new DataTable();

                fillDt(Textvalue, out dt);

                if (dt.Rows.Count > 0)
                {
                    cod.Text = dt.Rows[0]["cod"] + "";
                    Labelsym.Text = dt.Rows[0]["descripcion"] + "";
                }
                else
                {
                    Labelsym.Text="Simbolo no encontrado";
                }
        }



        private void fillDt(string Textvalue, out DataTable dt) 
        {
            //string pgl = "SELECT * FROM activo WHERE cod = @clave";
            string pgl = "SELECT * FROM activo WHERE cod like '" + Textvalue + "%'";
            // La cadena de conexión
            string conexion = 
            @"Data Source = (localdb)\v11.0; " + 
            "Initial Catalog=SFDAS; " + 
            "Integrated Security=true";
            dt = new DataTable();
            SqlConnection cnn = new SqlConnection(conexion);

            cnn.Open();
            SqlCommand cmd = new SqlCommand(pgl, cnn);
            SqlParameter param = new SqlParameter("@clave", SqlDbType.VarChar, 50);
            param.Value = Textvalue;
            cmd.Parameters.Add(param);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            cnn.Close();
        }

        protected void cod_TextChanged(object sender, EventArgs e)
        {
            SearchSym(this.cod.Text);
        }





    }
}