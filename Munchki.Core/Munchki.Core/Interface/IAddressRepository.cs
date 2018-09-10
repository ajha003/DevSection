using System;
using System.Collections.Generic;
using System.Text;
using Munchki.Core.Entity;
 
namespace Munchki.Core.Interface
{
    public interface IAddressRepository
    {

        /// <summary>
        /// Address addition in database
        /// </summary>
        /// <param name="a"></param>
        Address Add(Address a);


        /// <summary>
        /// Update exiting database
        /// </summary>
        /// <param name="a"></param>
        /// <returns></returns>
        Address Edit(Address a);

        /// <summary>
        /// Return address based on key
        /// </summary>
        /// <param name="AddressId"></param>
        /// <returns></returns>
        Address Get(int AddressId);

        
        /// <summary>
        /// Delete from domain only
        /// </summary>
        /// <param name="a"></param>
        void Remove(int AddressId);


        /// <summary>
        /// Hard Delete
        /// </summary>
        /// <param name="a"></param>
        void Delete(int  IAddressid);

    }
}
