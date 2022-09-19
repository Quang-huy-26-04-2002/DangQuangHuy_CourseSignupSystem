using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace DangQuangHuy_CourseSignupSystem.Models
{
    public partial class Course__Signup_System : DbContext
    {
        public Course__Signup_System()
            : base("name=CourseSignupSystem")
        {
        }

        public virtual DbSet<BangDiem> BangDiems { get; set; }
        public virtual DbSet<dangnhap> dangnhaps { get; set; }
        public virtual DbSet<DSGiaoVien> DSGiaoViens { get; set; }
        public virtual DbSet<DSHocVien> DSHocViens { get; set; }
        public virtual DbSet<DSHocVienDaNopTienPhi> DSHocVienDaNopTienPhis { get; set; }
        public virtual DbSet<DSKhoa> DSKhoas { get; set; }
        public virtual DbSet<DSLichNghi> DSLichNghis { get; set; }
        public virtual DbSet<DSLop> DSLops { get; set; }
        public virtual DbSet<DSLopHoc> DSLopHocs { get; set; }
        public virtual DbSet<DSMonHoc> DSMonHocs { get; set; }
        public virtual DbSet<DSNguoiDung> DSNguoiDungs { get; set; }
        public virtual DbSet<DSVaiTro> DSVaiTroes { get; set; }
        public virtual DbSet<FileDoanhThu> FileDoanhThus { get; set; }
        public virtual DbSet<HocPhi> HocPhis { get; set; }
        public virtual DbSet<LoaiDiem> LoaiDiems { get; set; }
        public virtual DbSet<LoaiDiemMon> LoaiDiemMons { get; set; }
        public virtual DbSet<LuongNV> LuongNVs { get; set; }
        public virtual DbSet<PhanCong> PhanCongs { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<ThongTinSV> ThongTinSVs { get; set; }
        public virtual DbSet<ToBoMon> ToBoMons { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<BangDiem>()
                .Property(e => e.Ten)
                .IsFixedLength();

            modelBuilder.Entity<DSGiaoVien>()
                .Property(e => e.AnhDaiDien)
                .IsUnicode(false);

            modelBuilder.Entity<DSGiaoVien>()
                .Property(e => e.GioiTinh)
                .IsFixedLength();

            modelBuilder.Entity<DSGiaoVien>()
                .Property(e => e.Email)
                .IsFixedLength();

            modelBuilder.Entity<DSHocVien>()
                .Property(e => e.HinhAnh)
                .IsUnicode(false);

            modelBuilder.Entity<DSHocVien>()
                .Property(e => e.HoTen)
                .IsFixedLength();

            modelBuilder.Entity<DSHocVien>()
                .Property(e => e.PhuHuynh)
                .IsFixedLength();

            modelBuilder.Entity<DSHocVienDaNopTienPhi>()
                .Property(e => e.HinhAnh)
                .IsUnicode(false);

            modelBuilder.Entity<DSHocVienDaNopTienPhi>()
                .Property(e => e.HoTen)
                .IsFixedLength();

            modelBuilder.Entity<DSHocVienDaNopTienPhi>()
                .Property(e => e.PhuHuynh)
                .IsFixedLength();

            modelBuilder.Entity<DSLop>()
                .Property(e => e.HocPhi)
                .HasPrecision(19, 4);

            modelBuilder.Entity<DSNguoiDung>()
                .Property(e => e.TenNguoiDung)
                .IsFixedLength();

            modelBuilder.Entity<DSNguoiDung>()
                .Property(e => e.Role)
                .IsFixedLength();

            modelBuilder.Entity<DSVaiTro>()
                .Property(e => e.TenVaiTro)
                .IsFixedLength();

            modelBuilder.Entity<FileDoanhThu>()
                .Property(e => e.HoTen)
                .IsFixedLength();

            modelBuilder.Entity<FileDoanhThu>()
                .Property(e => e.HocPhi)
                .HasPrecision(19, 4);

            modelBuilder.Entity<FileDoanhThu>()
                .Property(e => e.GiaoVien)
                .IsFixedLength();

            modelBuilder.Entity<HocPhi>()
                .Property(e => e.ThuPhi)
                .HasPrecision(19, 4);

            modelBuilder.Entity<HocPhi>()
                .Property(e => e.LoaiHocPhi)
                .HasPrecision(19, 4);

            modelBuilder.Entity<HocPhi>()
                .Property(e => e.MucThuPhi)
                .HasPrecision(19, 4);

            modelBuilder.Entity<HocPhi>()
                .Property(e => e.GhiChu)
                .IsFixedLength();

            modelBuilder.Entity<LoaiDiemMon>()
                .Property(e => e.LoaiDiem)
                .IsFixedLength();

            modelBuilder.Entity<LuongNV>()
                .Property(e => e.TongLuong)
                .HasPrecision(19, 4);

            modelBuilder.Entity<PhanCong>()
                .Property(e => e.TenGiangVien)
                .IsFixedLength();

            modelBuilder.Entity<ThongTinSV>()
                .Property(e => e.GiaTien)
                .HasPrecision(19, 4);

            modelBuilder.Entity<ThongTinSV>()
                .Property(e => e.HoTen)
                .IsFixedLength();

            modelBuilder.Entity<ToBoMon>()
                .Property(e => e.TenToBoMon)
                .IsFixedLength();
        }
    }
}
