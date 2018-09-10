using System;

namespace Munchki.Core.Entity
{
    public class Address
    {
        public int AddressId { get; set; }
        //Primary Key
        public int AdressTypeId { get; set; }


        /// <summary>
        /// Address Line#1
        /// </summary>
        public string AddressLine1 { get; set; }

        /// <summary>
        /// Address Line #2
        /// </summary>
        public string AddressLine2 { get; set; }


        /// <summary>
        /// City
        /// </summary>
        public string City { get; set; }
        /// <summary>
        /// State/Region
        /// </summary>
        public string State { get; set; }

        /// <summary>
        /// Postal code / zip code
        /// </summary>
        public string PostCode { get; set; }

        /// <summary>
        /// Country Name
        /// </summary>

        public string Country { get; set; }

        /// <summary>
        /// Is public to the domain
        /// </summary>
        public bool IsPublic { get; set; }

        /// <summary>
        /// Is Record deleted?Soft Delete
        /// </summary>
        public bool IsDeleted { get; set; }

        /// <summary>
        /// Created On Date
        /// </summary>
        public DateTime CreatedOnDate { get; set; }
        /// <summary>
        /// Address last modification date
        /// </summary>
        public DateTime ModifiedOnDate { get; set; }


    }
}
