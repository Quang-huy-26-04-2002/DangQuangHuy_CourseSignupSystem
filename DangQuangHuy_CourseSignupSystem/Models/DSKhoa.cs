namespace DangQuangHuy_CourseSignupSystem.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DSKhoa")]
    public partial class DSKhoa
    {
        [Key]
        [StringLength(50)]
        public string MaKhoa { get; set; }

        [StringLength(50)]
        public string TenKhoa { get; set; }
    }
}
