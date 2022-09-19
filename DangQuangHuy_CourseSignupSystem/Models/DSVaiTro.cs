namespace DangQuangHuy_CourseSignupSystem.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DSVaiTro")]
    public partial class DSVaiTro
    {
        [Key]
        [StringLength(10)]
        public string TenVaiTro { get; set; }
    }
}
