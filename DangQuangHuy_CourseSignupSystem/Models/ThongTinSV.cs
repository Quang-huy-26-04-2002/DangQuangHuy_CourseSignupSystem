namespace DangQuangHuy_CourseSignupSystem.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ThongTinSV")]
    public partial class ThongTinSV
    {
        [Key]
        [StringLength(50)]
        public string MaLop { get; set; }

        [StringLength(50)]
        public string KhoaDaoTao { get; set; }

        [Column(TypeName = "money")]
        public decimal? GiaTien { get; set; }

        [StringLength(50)]
        public string TrangThai { get; set; }

        [StringLength(50)]
        public string MaHV { get; set; }

        [StringLength(20)]
        public string HoTen { get; set; }

        [StringLength(50)]
        public string NgaySinh { get; set; }

        [StringLength(50)]
        public string Email { get; set; }
    }
}
