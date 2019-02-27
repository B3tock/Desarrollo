using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BancoPinchincha.Canales.Bmp.Consolidacion;


namespace AppConsolidaArchivos
{
    class Program
    {
        static void Main(string[] args)
        {
            var respuesta = ControlArchivo.GenerarConsolidacion();
            //Console.ReadLine();
        }
    }
}
