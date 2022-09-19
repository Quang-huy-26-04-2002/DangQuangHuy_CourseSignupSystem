namespace DangQuangHuy_CourseSignupSystem.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LoaiDiemMon")]
    public partial class LoaiDiemMon
    {
        [StringLength(50)]
        public string TenKhaoDaoTao { get; set; }

        [StringLength(50)]
        public string TenMonHoc { get; set; }

        [Key]
        [StringLength(20)]
        public string LoaiDiem { get; set; }

        public int? SoCotDiem { get; set; }

        public int? SoCotDiemBatBuoc { get; set; }
    }
}
