using System;
using System.Collections.Generic;
using System.Text;

namespace Munchki.Core.Entity
{
    public class Country
    {
        /// <summary>
        /// Table PRimary key
        /// </summary>
        public int CountryId { get; set; }

        /// <summary>
        /// Short Abbreviation of country code
        /// </summary>
        public string KeyName { get; set; }
        /// <summary>
        /// Currency code of country
        /// </summary>
        public string Currency { get; set; }
        /// <summary>
        /// Full country name
        /// </summary>
        public string DisplayName { get; set; }
        /// <summary>
        /// Country Hexa code to display Symbol
        /// </summary>
        public string CurrencySymbol { get; set; }

    }
}
