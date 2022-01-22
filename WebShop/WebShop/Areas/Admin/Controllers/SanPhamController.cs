using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebShop.Models;

namespace WebShop.Areas.Admin.Controllers
{
    public class SanPhamController : Controller
    {
        // GET: Admin/ProductAdmin
        [CustomAuthorize(Roles = "admin")]
        public ActionResult Index()
        {
            using (var con = new MyDBContext())
            {
                var model = con.Products.ToList();
                return View(model);
            }
        }

        [ChildActionOnly]
        public ActionResult CategoryID()
        {
            using (var con = new MyDBContext())
            {
                var model = con.Category.ToList();
                return PartialView(model);
            }
        }

        [HttpPost]
        public ActionResult Search(string s)
        {
            using (var con = new MyDBContext())
            {
                var model = con.Products.Where(x => x.Name.Contains(s)).ToList();
                return View("Index", model);
            }
        }

        // GET: Admin/ProductAdmin/Details/5
        public ActionResult Details(int id)
        {
            using (var con = new MyDBContext())
            {
                var model = con.Products.Find(id);
                return View(model);
            }
        }

        // GET: Admin/ProductAdmin/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/ProductAdmin/Create
        [HttpPost]
        public ActionResult Create(Models.Product obj)
        {
            var con = new MyDBContext();
            obj.CreateDate = DateTime.Now;
            con.Products.Add(obj);
            con.SaveChanges();
            return RedirectToAction("Index");
        }


        public ActionResult Edit(int id)
        {
            using (var con = new MyDBContext())
            {
                var model = con.Products.Find(id);
                return View(model);
            }
        }

        // POST: Admin/ProductAdmin/Edit/5
        [HttpPost]
        public ActionResult Edit(Product model)
        {
            try
            {
                using (var con = new MyDBContext())
                {
                    var obj = con.Products.Find(model.ID_Product);
                    obj.Name = model.Name;
                    obj.Price = model.Price;
                    obj.Quantity = model.Quantity;
                    con.SaveChanges();
                    ViewBag.MessageEdit = "Success";
                    return RedirectToAction("Index");
                }
                // TODO: Add update logic here

            }
            catch
            {
                ViewBag.MessageEdit = "Failed";
                return Redirect("/Admin/SanPham/Edit/" + model.ID_Product);
            }
        }

        // GET: Admin/ProductAdmin/Delete/5
        public ActionResult Delete(int id, string Message)
        {
            try
            {
                using (var con = new MyDBContext())
                {
                    var obj = con.Products.FirstOrDefault(x => x.ID_Product == id);
                    if (obj != null)
                    {
                        con.Products.Remove(obj);
                        con.SaveChanges();
                    }
                    ViewBag.Message = "Removed!!!";
                    return RedirectToAction("Index");

                }
            }
            catch
            {
                ViewBag.Message = "Remove Failed!!!";
                return Redirect("/Admin/SanPham/Index");
            }
        }

        /*
        // POST: Admin/ProductAdmin/Delete/5
        [HttpPost]
        public ActionResult Delete(Trademark model)
        {
            try
            {
                using (var con = new MyDBContext())
                {
                    var obj = con.Products.Find(model.ID_Trademark);
                    con.Products.Remove(obj);
                    con.SaveChanges();
                    return RedirectToAction("Index");
                }
            }
            catch
            {
                return Redirect("/Admin/ProductAdmin/Delete/" + model.ID_Trademark);
            }
        }
        */
    }
}
