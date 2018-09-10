using System;
using Munchki.Core.Entity;
using Munchki.Core.Interface;
using System.Data.Entity;
using System.Linq;
using System.Collections.Generic;
using Munchki.Infrastructure.Context;
namespace Munchki.Infrastructure
{
    public class AddressRepository : IAddressRepository
    {
        DBContextController Context = new DBContextController();
        public Address Add(Address a)
        {
            Context.Addresses.Add(a);
            Context.SaveChanges();

            return a;
        }

        public void Delete(int AddressId)
        {
            var oAddress = Get(AddressId);
            Context.Addresses.Remove(oAddress);
            Context.SaveChanges();


        }

        public Address Edit(Address a)
        {
            Context.Entry(a).State = EntityState.Modified;
            return a;
        }

        public Address Get(int AddressId)
        {
            var result = (from a in Context.Addresses where a.AddressId == AddressId select a).FirstOrDefault();
            return result;
        }

        public void Remove(int iAddressid)
        {
            var oAddress = Get(iAddressid);
            if (oAddress != null)
            {
                oAddress.IsDeleted = true;
                Edit(oAddress);
            }

        }
    }
}
