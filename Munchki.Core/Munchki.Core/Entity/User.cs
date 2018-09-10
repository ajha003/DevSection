using System;
using System.Collections.Generic;
using System.Text;

namespace Munchki.Core.Entity
{
    public class User
    {

        public int UserId { get; set; }
        public string UserName { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string AltEmail { get; set; }
        public bool IsAdmin { get; set; }

        public DateTime CreatedDateTime { get; set; }
        public bool IsVerified { get; set; }
        public bool IsAuthenticated { get; set; }
        public DateTime VerfiiedDateTime { get; set; }
        public DateTime AuthenticatedDateTime { get; set; }
        public bool IsDeleted { get; set; }
        public DateTime DeletedDateTime { get; set; }
        public int DeletedBy { get; set; }

    }
}
