using System;
using System.Collections.Generic;
using System.Text;

namespace Munchki.Core.Entity
{
    public class UserMembership
    {

        public int UserMembershipId { get; set; }
        public int UserId { get; set; }
        public int PlanID { get; set; }
        public bool IsActive { get; set; }
        public int PlanCreatedBy { get; set; }
        public int PlanCreatedOnDateTime { get; set; }
        public bool IsExpired { get; set; }
        public DateTime ExpiredDateTime { get; set; }
        public int OrderBy { get; set; }
    }
}
