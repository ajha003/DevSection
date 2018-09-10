using System;
using System.Collections.Generic;
using System.Text;

namespace Munchki.Core.Entity
{
    public class CardMasterProvider
    {
        /// <summary>
        /// Primary Key
        /// </summary>
        public int CardProviderId { get; set; }

        /// <summary>
        /// Display to domain
        /// </summary>
        public string DisplayName { get; set; }

        /// <summary>
        /// Keyname to unique define
        /// </summary>
        public string KeyName { get; set; }
        /// <summary>
        /// Is Record public
        /// </summary>
        public bool IsPublic { get; set; }

        /// <summary>
        /// Recrod added on system
        /// </summary>
        public DateTime CreatedOnDate { get; set; }

        /// <summary>
        /// Record created by
        /// </summary>
        public int CreatedBy { get; set; }

        /// <summary>
        /// Last Modified by User
        /// </summary>

        public int ModifiedBy { get; set; }
        /// <summary>
        /// When record was modified 
        /// </summary>
        public DateTime ModifiedOnDate { get; set; }

        /// <summary>
        /// Is Record deleted
        /// </summary>

        public bool IsDeleted { get; set; }
    }
}
