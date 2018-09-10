using System;
using System.Collections.Generic;
using System.Text;

namespace Munchki.Core.Entity
{
    public class UserAddress
    {

        /// <summary>
        /// Primary key
        /// </summary>
        public int UserAddressId { get; set; }
        /// <summary>
        /// Reference UserId that holding address
        /// </summary>
        public int UserId { get; set; }
        /// <summary>
        /// Address id of Primary key
        /// </summary>
        public int AddressId { get; set; }
    }
}
