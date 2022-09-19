namespace DangQuangHuy_CourseSignupSystem.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DSMonHoc")]
    public partial class DSMonHoc
    {
        [Key]
        [StringLength(50)]
        public string MaMonHoc { get; set; }

        [StringLength(50)]
        public string TenMonHoc { get; set; }

        [StringLength(50)]
        public string TenBoMon { get; set; }

        [StringLength(50)]
        public string TenKhoa { get; set; }
    }
}
