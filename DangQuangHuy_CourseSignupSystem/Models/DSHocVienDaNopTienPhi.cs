namespace DangQuangHuy_CourseSignupSystem.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DSHocVienDaNopTienPhi")]
    public partial class DSHocVienDaNopTienPhi
    {
        [Key]
        [StringLength(50)]
        public string MaHocVien { get; set; }

        [Column(TypeName = "text")]
        public string HinhAnh { get; set; }

        [StringLength(20)]
        public string HoTen { get; set; }

        [StringLength(20)]
        public string PhuHuynh { get; set; }

        [StringLength(50)]
        public string DiaChi { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgaySinh { get; set; }

        public int? SDT { get; set; }

        [StringLength(50)]
        public string Email { get; set; }

        [StringLength(50)]
        public string LopHoc { get; set; }
    }
}
