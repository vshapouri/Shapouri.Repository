using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace practice08_02
{
    class Program
    {
        static void Main(string[] args)
        {
            int[] num = new int[] { 3, 4, 7, 8 };
            int count = 8 - num.Length;
            Console.WriteLine(count);
            Console.ReadKey();

        }
    }
}
