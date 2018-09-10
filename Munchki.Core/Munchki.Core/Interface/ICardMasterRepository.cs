using System;
using System.Collections.Generic;
using System.Text;
using Munchki.Core.Entity;
 
namespace Munchki.Core.Interface
{
    public interface ICardMasterRepostiry
    {

        /// <summary>
        /// Add 
        /// </summary>
        /// <param name="a"></param>
        /// <returns></returns>
        CardMaster Add(CardMaster a);


        /// <summary>
        /// Update/Edit
        /// </summary>
        /// <param name="a"></param>
        /// <returns></returns>
        CardMaster Edit(CardMaster a);

        /// <summary>
        /// Return single Entity/Object
        /// </summary>
        /// <param name="AddressId"></param>
        /// <returns></returns>
        CardMaster Get(int CardTypeId);

        
        /// <summary>
        /// Delete from domain only
        /// </summary>
        /// <param name="a"></param>
        void Remove(CardMaster a);


        /// <summary>
        /// Listing of records
        /// </summary>
        /// <returns></returns>
        IEnumerable<CardMaster> Gets();


        /// <summary>
        /// Listing of Public records
        /// </summary>
        /// <returns></returns>
        IEnumerable<CardMaster> Search();




    }
}
