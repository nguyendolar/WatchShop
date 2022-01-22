using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WebShop.Models;

namespace WebShop.Areas.Admin.Controllers
{
    public class ProductAPIController : ApiController
    {
        // GET: api/ProductAPI
        public IEnumerable<ProductView> Get()
        {
            using (var con = new MyDBContext())
            {
                var model = con.ProductViews.ToList();
                return model;
            }
        }

        // GET: api/ProductAPI/5
        public ProductView Get(int id)
        {
            using (var con = new MyDBContext())
            {
                var model = con.ProductViews.Find(id);
                return model;
            }
        }

        // POST: api/ProductAPI
        public void Post(Product model)
        {
            var con = new MyDBContext();
            model.CreateDate = DateTime.Now;
            con.Products.Add(model);
            con.SaveChanges();
        }

        // PUT: api/ProductAPI/5
        public void Put(Product model)
        {
            using (var con = new MyDBContext())
            {
                var obj = con.Products.Find(model.ID_Product);
                obj.Name = model.Name;
                obj.Price = model.Price;
                obj.Avatar = model.Avatar;
                con.SaveChanges();
            }
        }

        // DELETE: api/ProductAPI/5
        public void Delete(int id)
        {
            using (var con = new MyDBContext())
            {
                var obj = con.Products.FirstOrDefault(x => x.ID_Product == id);
                if (obj != null)
                {
                    con.Products.Remove(obj);
                    con.SaveChanges();
                }
            }
        }
    }
}
