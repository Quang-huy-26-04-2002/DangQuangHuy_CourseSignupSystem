namespace DangQuangHuy_CourseSignupSystem.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LuongNV")]
    public partial class LuongNV
    {
        [Key]
        [StringLength(50)]
        public string MaGiaoVien { get; set; }

        [StringLength(50)]
        public string TenGiangVien { get; set; }

        [StringLength(50)]
        public string Email { get; set; }

        public int? SDT { get; set; }

        [Column(TypeName = "money")]
        public decimal? TongLuong { get; set; }

        [StringLength(50)]
        public string TrangThai { get; set; }
    }
}
