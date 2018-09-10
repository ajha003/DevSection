using System;
using System.Collections.Generic;
using System.Text;

namespace Munchki.Core.Entity
{
    public class UserProfile
    {

        /// <summary>
        /// Primary Identification coulumn
        /// </summary>
        public int ProfileId { get; set; }

        /// <summary>
        /// UserID , refernce to User
        /// </summary>
        public int UserId { get; set; }
        /// <summary>
        /// Title of person
        /// </summary>
        public string Title { get; set; }
        /// <summary>
        /// Telephone number
        /// </summary>
        public string Telephone { get; set; }
        /// <summary>
        /// Mobile Number
        /// </summary>
        public string Mobile { get; set; }
        /// <summary>
        /// Date of Birthd of person
        /// </summary>
        public DateTime DateOfBirth { get; set; }

        /// <summary>
        /// Gender 
        /// 0 - Male, 1 - Female, 2- TransGeneder
        /// </summary>
        public int Gender { get; set; }
        /// <summary>
        /// Is Administrator of plan for which it was registered
        /// </summary>
        public bool IsPlanAdmin { get; set; }
        /// <summary>
        /// Is Plan still active for which he is member
        /// </summary>
        public bool IsPlanActive { get; set; }
        /// <summary>
        /// Related family they bound
        /// </summary>
        public int FamilyId { get; set; }
        /// <summary>
        /// Images/profile pic
        /// </summary>
        public string Avatar { get; set; }
    }
}
