using System;

namespace Munchki.Core.Entity
{
    public class AddressType
    {
        //Primary Key
        public int AdressTypeId { get; set; }

        //Key for Query and system notification/short key
        public string KeyName { get; set; }

        /// <summary>
        /// Display to domain
        /// </summary>
        public string DisplayName { get; set; }


        public int OrderBy { get; set; }

        public bool IsPublic { get; set; }
    }
}
