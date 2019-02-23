using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace practice08_03
{
    class Program
    {
        static void Main(string[] args)
        {
            double rad = 0;
            double volume;
            double sourface;
            Console.WriteLine("Enter THe Radius: ");
            rad = Convert.ToDouble(Console.ReadLine());
            volume = ((4 / 3) * 3.14) * (rad * rad * rad);
            sourface = (4 * 3.14) * (rad * rad);
            Console.WriteLine($"volume is : {volume} and sourface is : { sourface}");
            Console.ReadKey();





        }
    }
}
