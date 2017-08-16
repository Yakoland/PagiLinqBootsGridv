using System.Collections.Generic;
using DataAccessLayer;
using System.Linq;

namespace BusinessLayer
{
    public class ProductoBL
    {
        NorthwindEntities _ctx = new NorthwindEntities();

        public List<Products> getPaginacionByDes(int starIndex, int maxRows, string desc)
        {
            var resul = (from oc in _ctx.Products where oc.ProductName.Contains(desc) select oc)
                .OrderBy(p => p.ProductID)
                .Skip((starIndex - 1) * maxRows)
                .Take(maxRows);

            return resul.ToList();
        }

        public int getPaginacionCount(string desc) {
            return _ctx.Products.Count(p => p.ProductName.Contains(desc));
        }
    }
}
