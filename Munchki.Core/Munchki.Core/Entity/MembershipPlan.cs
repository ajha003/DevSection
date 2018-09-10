using System;
using System.Collections.Generic;
using System.Text;

namespace Munchki.Core.Entity
{
    public class MembershipPlan
    {

        /// <summary>
        /// Primary key of table
        /// </summary>
        public int MPlanId { get; set; }

        /// <summary>
        /// Membership Plan headline/Title
        /// </summary>
        public string MTitle { get; set; }

        /// <summary>
        /// Description of membership
        /// </summary>
        public string MDescription { get; set; }

        /// <summary>
        /// Membership fees
        /// </summary>
        public decimal MFee { get; set; }

        /// <summary>
        /// Currency code of fees
        /// </summary>
        public string MCurrency { get; set; }
        /// <summary>
        /// Membership valid for Many days
        /// </summary>
        public int MDurationInDay { get; set; }
        /// <summary>
        /// Number of user with plan
        /// </summary>
        public int MUserLimit { get; set; }
        /// <summary>
        /// Is public to domain
        /// </summary>
        public bool IsPublic { get; set; }

        /// <summary>
        /// Is record deleted from domain
        /// </summary>
        public bool IsDeleted { get; set; }


        /// <summary>
        /// Which order record will display to domain
        /// </summary>
        public int OrderBy { get; set; }
        /// <summary>
        /// Created Date and time
        /// </summary>
        public DateTime CreatedOnDate { get; set; }

        /// <summary>
        /// Created By
        /// </summary>
        public int CreatedBy { get; set; }
        /// <summary>
        /// Last Modification information
        /// </summary>
        public int LastModifiedBy { get; set; }
        /// <summary>
        /// When last modification done
        /// </summary>
        public DateTime LastModifiedDate { get; set; }
    }
}
