using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Pournaseri_5.Models
{
    public class Product
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Descipt { get; set; }
        public int Pice { get; set; }
        public string ImagePath { get; set; }
    }
    public class MyContext : DbContext
    {

        public MyContext() : base("Server=.;Database=Shop;Trusted_Connection=True;")

        {

        }

        public DbSet<Product> Shops { get; set; }
    }
}