using System;
using System.Collections.Generic;
using System.Text;

namespace Munchki.Core.Entity
{
    public class VehicleMaster
    {
        public int VechicleTypeId { get; set; }
        public string DisplayName { get; set; }
        public string KeyName { get; set; }
        public bool IsGadget { get; set; }
        public int DisplayOrder { get; set; }
        public bool IsPublic { get; set; }
        public bool IsDeleted { get; set; }
    }
}
