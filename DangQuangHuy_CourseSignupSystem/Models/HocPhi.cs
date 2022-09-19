namespace DangQuangHuy_CourseSignupSystem.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("HocPhi")]
    public partial class HocPhi
    {
        [Key]
        [StringLength(50)]
        public string LopHoc { get; set; }

        [Column(TypeName = "money")]
        public decimal? ThuPhi { get; set; }

        [Column(TypeName = "money")]
        public decimal? LoaiHocPhi { get; set; }

        [Column(TypeName = "money")]
        public decimal? MucThuPhi { get; set; }

        [StringLength(100)]
        public string GhiChu { get; set; }
    }
}
