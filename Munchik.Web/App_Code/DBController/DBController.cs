using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using Munchki.Infrastructure;
using Munchki.Core.Entity;
namespace Munchki.Web.Code
{
    /// <summary>
    /// Summary description for DBController
    /// </summary>
    public class DBController
    {
        ContextController dbContext;

        private bool IsAdmin;
        public DBController()
        {
            dbContext = new ContextController(IsAdmin);

        }



        public Users AddUser(Users user)
        {
            return dbContext.AddUser(user);
        }
        /// <summary>
        /// Controller to fetch record based on admin?
        /// </summary>
        /// <param name="IsAdmin"></param>
        /// <param name="ShowDelete"></param>
        /// <returns></returns>
        public List<CardMasterProvider> GetCardProviders()
        {
            return dbContext.GetCardProviders();
        }

        public CardMasterProvider GetCardProvider(int CardProviderId)
        {


            return dbContext.GetCardProvider(CardProviderId);

        }
        /// <summary>
        /// Controller to fetch record based on admin?
        /// </summary>
        /// <param name="IsAdmin"></param>
        /// <param name="ShowDelete"></param>
        /// <returns></returns>
        public List<CardMasterTypes> GetCardTypes()
        {

            return dbContext.GetCardTypes();
        }

        public CardMasterTypes GetCardType(int CardTypeId)
        {

            return dbContext.GetCardType(CardTypeId);

        }

        public int InsertCardProvider(CardMasterProvider ocardMasterProvider)
        {
            return dbContext.InsertCardProvider(ocardMasterProvider);



        }

        public int InsertCardProvider(string CardName, bool isPublish)
        {
            if (IsAdmin)
            {
                var ocard = new CardMasterProvider()
                {
                    CardProviderId = -1,
                    CreatedBy = 1,
                    CreatedOnDate = System.DateTime.Now,
                    DisplayName = CardName,
                    IsDeleted = false,
                    IsPublic = isPublish,

                    ModifiedBy = 1,
                    ModifiedOnDate = System.DateTime.Now

                };
                return InsertCardProvider(ocard);
            }
            return 0;

        }

        public int InsertCardType(CardMasterTypes cardMasterTypes)
        {
          
            return dbContext.InsertCardType(cardMasterTypes);
             
        }
        public int UpdateCardType(CardMasterTypes cardMasterTypes)
        {
            return dbContext.UpdateCardType(cardMasterTypes);

        }

        
    }
}