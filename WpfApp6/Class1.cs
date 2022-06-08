using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfApp6
{
    class Class1
    {
        private static Entities2 _context;
        public static Entities2 GetContext()
        {
            if (_context == null)
                _context = new Entities2();
            return _context;
        }
    }
}
    

