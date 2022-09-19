namespace DangQuangHuy_CourseSignupSystem.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("FileDoanhThu")]
    public partial class FileDoanhThu
    {
        [Key]
        [StringLength(50)]
        public string MaHocVien { get; set; }

        [StringLength(20)]
        public string HoTen { get; set; }

        [StringLength(50)]
        public string LopHoc { get; set; }

        [StringLength(50)]
        public string NgayHocTrongTuan { get; set; }

        public TimeSpan? GioHoc { get; set; }

        [Column(TypeName = "money")]
        public decimal? HocPhi { get; set; }

        [StringLength(20)]
        public string GiaoVien { get; set; }
    }
}
