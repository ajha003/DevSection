using System;
using System.Collections.Generic;
using System.Text;
using Munchki.Core.Entity;
 
namespace Munchki.Core.Interface
{
    public interface IAddressTypeRepository
    {

        /// <summary>
        /// Address addition in database
        /// </summary>
        /// <param name="a"></param>
        AddressType Add(AddressType a);


        /// <summary>
        /// Update exiting database
        /// </summary>
        /// <param name="a"></param>
        /// <returns></returns>
        AddressType Edit(AddressType a);

        /// <summary>
        /// Return address based on key
        /// </summary>
        /// <param name="AddressId"></param>
        /// <returns></returns>
        AddressType Get(int AddressTypeid);

        
        /// <summary>
        /// Delete from domain only
        /// </summary>
        /// <param name="a"></param>
        void Remove(AddressType a);


        /// <summary>
        /// Return address based on key
        /// </summary>
        /// <param name="AddressId"></param>
        /// <returns></returns>
        IEnumerable<AddressType> Gets();


        /// <summary>
        /// Return address based on key
        /// </summary>
        /// <param name="AddressId"></param>
        /// <returns></returns>
        IEnumerable<AddressType> Search();



    }
}
