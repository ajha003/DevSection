using System;
using System.Collections.Generic;
using System.Text;
using Munchki.Core.Entity;
 
namespace Munchki.Core.Interface
{
    public interface ICardMasterProviderRepository
    {

        /// <summary>
        /// Add 
        /// </summary>
        /// <param name="a"></param>
        /// <returns></returns>
        CardMasterProvider Add(CardMasterProvider a);


        /// <summary>
        /// Update/Edit
        /// </summary>
        /// <param name="a"></param>
        /// <returns></returns>
        CardMasterProvider Edit(CardMasterProvider a);

        /// <summary>
        /// Return single Entity/Object
        /// </summary>
        /// <param name="AddressId"></param>
        /// <returns></returns>
        CardMasterProvider Get(int CardTypeId);

        
        /// <summary>
        /// Delete from domain only
        /// </summary>
        /// <param name="a"></param>
        void Remove(CardMasterProvider a);


        /// <summary>
        /// Listing of records
        /// </summary>
        /// <returns></returns>
        IEnumerable<CardMasterProvider> Gets();


        /// <summary>
        /// Listing of Public records
        /// </summary>
        /// <returns></returns>
        IEnumerable<CardMasterProvider> Search();




    }
}
