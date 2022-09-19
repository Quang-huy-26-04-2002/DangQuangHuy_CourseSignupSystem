namespace DangQuangHuy_CourseSignupSystem.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DSLichNghi")]
    public partial class DSLichNghi
    {
        [Key]
        [StringLength(50)]
        public string TenNgayNghi { get; set; }

        [StringLength(50)]
        public string LyDo { get; set; }

        [Column(TypeName = "date")]
        public DateTime? ThoiGianBatDau { get; set; }

        [Column(TypeName = "date")]
        public DateTime? ThoiGianKetThucd { get; set; }
    }
}
