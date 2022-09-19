namespace DangQuangHuy_CourseSignupSystem.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BangDiem")]
    public partial class BangDiem
    {
        public int ID { get; set; }

        [StringLength(20)]
        public string Ten { get; set; }

        public int? KiemTraMieng { get; set; }

        public int? DiemTrungBinh { get; set; }
    }
}
