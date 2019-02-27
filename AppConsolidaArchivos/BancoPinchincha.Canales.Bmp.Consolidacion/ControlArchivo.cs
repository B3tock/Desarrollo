using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Configuration;
using System.Net; 

namespace BancoPinchincha.Canales.Bmp.Consolidacion
{
    public static class ControlArchivo
    {
        public static bool GenerarConsolidacion()
        {
            try
            {
                //Leer configuracion
                var strDirectorioArchivos = System.Configuration.ConfigurationManager.AppSettings["DirectorioArchivos"];
                var strDirectorioResultado = System.Configuration.ConfigurationManager.AppSettings["DirectorioResultado"];
                var strDirectorioProcesados = System.Configuration.ConfigurationManager.AppSettings["DirectorioProcesados"];
                var strDirectorioFtp = System.Configuration.ConfigurationManager.AppSettings["DirectorioFtp"];
                var strUsuarioFtp = System.Configuration.ConfigurationManager.AppSettings["UsuarioFtp"];
                var strPasswordFtp = System.Configuration.ConfigurationManager.AppSettings["PasswordFtp"];
                string NomArchivo = GetFileName();
                string strRuta = strDirectorioResultado + "\\" + NomArchivo;
                bool rtalog = Log("Archivo Consolidado " + strRuta);
                DirectoryInfo di = new DirectoryInfo(strDirectorioArchivos);
                foreach (var fi in di.GetFiles())
                {
                    rtalog = Log("Archivos para consolidación " + fi.Name);
                    string text = File.ReadAllText(fi.FullName);
                    text = text + "\r\n";
                    File.AppendAllText(strRuta, text);
                    File.Move(fi.FullName, strDirectorioProcesados + "\\" + fi.Name);
                }
                // Get the object used to communicate with the server.  
                FtpWebRequest request = (FtpWebRequest)WebRequest.Create(strDirectorioFtp + NomArchivo);
                request.Method = WebRequestMethods.Ftp.UploadFile;

                // This example assumes the FTP site uses anonymous logon.  
                request.Credentials = new NetworkCredential(strUsuarioFtp, strPasswordFtp);

                StreamReader sourceStream = new StreamReader(strRuta);
                byte[] fileContents = Encoding.UTF8.GetBytes(sourceStream.ReadToEnd());
                sourceStream.Close();
                request.ContentLength = fileContents.Length;

                Stream requestStream = request.GetRequestStream();
                requestStream.Write(fileContents, 0, fileContents.Length);
                requestStream.Close();
                FtpWebResponse response = (FtpWebResponse)request.GetResponse();
                response.Close();  
            }
            catch (Exception e)
            {
                var rtalog = Log("Error: " + e.Message);
            }
            return true;
        }


        public static String GetFileName()
        {
            var strDirectorioArchivos = System.Configuration.ConfigurationManager.AppSettings["DirectorioArchivos"];
            var strDirectorioResultado = System.Configuration.ConfigurationManager.AppSettings["DirectorioResultado"];
            string NomArchivo = "";
            DirectoryInfo di = new DirectoryInfo(strDirectorioArchivos);
            NomArchivo = NomArchivo + di.GetFiles().GetValue(0);
            return NomArchivo;
        }


        public static bool Log(string lines)
        {
            DateTime Hoy = DateTime.Today;
            DateTime localDate = DateTime.Now;
            string fecha_actual = Hoy.ToString("dd-MM-yyyy");
            var strDirectorioLogs = System.Configuration.ConfigurationManager.AppSettings["DirectorioLogs"];
            strDirectorioLogs = strDirectorioLogs+"\\LogConsolida_"+fecha_actual+".txt";
            File.AppendAllText(strDirectorioLogs,localDate + "==>" + lines + "\r\n");
            return true;
          }
    }
}
