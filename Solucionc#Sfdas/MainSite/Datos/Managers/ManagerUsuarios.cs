using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos; 

namespace Datos.Managers
{
    public class ManagerUsuarios
    {
        DataContentDataContext Main = new DataContentDataContext();

        public Usuarios TraerUsuario(int idUsuario)
        {
            return Main.Usuarios.Single(x => x.IdUsuario == idUsuario);
        }

        public Usuarios SaveUsuarios(Usuarios oUsuario, bool esALTA)
        {
            if ((oUsuario.IdUsuario > 0) == false)
            {
                if (esALTA == true)
                {
                    Main.Usuarios.InsertOnSubmit(oUsuario);
                }
            }

            Main.SubmitChanges();

            return oUsuario;
        }

        public List<Usuarios> TraerUsuarios()
        {
            return Main.Usuarios.ToList();
        }

        public Usuarios TraerUsuariosPorMail(string Usuario)
        {
            return Main.Usuarios.Where(x => x.Mail == Usuario).SingleOrDefault();
        }
       
    }
}

