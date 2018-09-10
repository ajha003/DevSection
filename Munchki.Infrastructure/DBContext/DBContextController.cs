using System;
using Munchki.Core.Entity;
using Munchki.Core.Interface;
using System.Data.Entity;
using System.Linq;
using System.Collections.Generic;
namespace Munchki.Infrastructure.Context
{
    public class DBContextController : DbContext
    {

        public DBContextController() : base("name=DefaultConnection")
        {

        }
        public DbSet<Address> Addresses { get; set; }

      
        public DbSet<AddressType> AddressTypes { get; set; }


        public DbSet<CardMaster> CardMasters { get; set; }


        public DbSet<CardMasterProvider> CardMasterProviders { get; set; }


        public DbSet<Country> Countrys { get; set; }


        public DbSet<MembershipPlan> MembershipPlans { get; set; }


        public DbSet<User> Users { get; set; }


        public DbSet<UserAddress> UserAddresss { get; set; }


        public DbSet<UserMembership> UserMemberships { get; set; }


        public DbSet<UserProfile> UserProfiles { get; set; }


        public DbSet<VehicleMaster> VehicleMasters { get; set; }

        

    }
}
