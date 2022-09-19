namespace DangQuangHuy_CourseSignupSystem.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DSLopHoc")]
    public partial class DSLopHoc
    {
        [Key]
        [StringLength(50)]
        public string TenLop { get; set; }

        [StringLength(100)]
        public string MoTa { get; set; }
    }
}
