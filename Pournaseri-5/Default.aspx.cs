using Pournaseri_5.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pournaseri_5
{
    public partial class _Default : Page
    {
        MyContext myContext;
        protected void Page_Load(object sender, EventArgs e)
        {
            myContext = new MyContext();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string name = TxtName.Text;
            string desc = TxtDetail.Text;
            int price = Convert.ToInt32(TxtPrice.Text);
            string ipath="";

            if (FileUpload1.HasFile)
            {

                try
                {
                    Guid guid = Guid.NewGuid();
                    string iname = guid.ToString() + ".jpg";
                    FileUpload1.SaveAs(@"C:\Users\Admin\Desktop\Pournaseri-5\Pournaseri-5\Images\" + iname);
                    ipath = "Images/" + iname;

                }
                catch (Exception ex)
                {


                }
            }


            Product shop = new Product()
            {
                Name = name,
                Descipt = desc,
                Pice = price,
                ImagePath= ipath
            };

            myContext.Shops.Add(shop);
            myContext.SaveChanges();

            Response.Redirect("Productview.aspx");

        }
    }
}