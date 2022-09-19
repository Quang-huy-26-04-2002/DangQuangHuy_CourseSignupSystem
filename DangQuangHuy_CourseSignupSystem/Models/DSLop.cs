namespace DangQuangHuy_CourseSignupSystem.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DSLop")]
    public partial class DSLop
    {
        [Key]
        [StringLength(50)]
        public string MaLop { get; set; }

        [StringLength(50)]
        public string TenLop { get; set; }

        [StringLength(50)]
        public string NienKhoa { get; set; }

        [StringLength(50)]
        public string Khoa_khoi { get; set; }

        [StringLength(50)]
        public string SoLuongHocVien { get; set; }

        [StringLength(50)]
        public string TrangThai { get; set; }

        [Column(TypeName = "money")]
        public decimal? HocPhi { get; set; }
    }
}
