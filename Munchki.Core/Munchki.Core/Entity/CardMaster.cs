using System;
using System.Collections.Generic;
using System.Text;

namespace Munchki.Core.Entity
{
    public class CardMaster
    {
        public int CardTypeId { get; set; }

        public string DisplayName { get; set; }

        public string KeyName { get; set; }

        public bool IsPublic { get; set; }
    }
}
