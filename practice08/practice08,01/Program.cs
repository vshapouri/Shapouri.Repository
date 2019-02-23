using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace practice08_01
{
    class Program
    {
        static void Main(string[] args)
        {
            string  Orginal = "palindrome";
            Console.Write("Enter String :");
            if (Orginal==Console.ReadLine())
            {
                Console.WriteLine("True");
            }
            else
            {
                Console.WriteLine("False");
            
            }
            Console.ReadKey();
                


        }
    }
}
