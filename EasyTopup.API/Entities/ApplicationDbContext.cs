using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;
using Microsoft.Extensions.Configuration;
using System.IO;
using EasyTopup.Data.Models;
using EasyTopup.Data.ViewModels;

namespace EasyTopup.API.Entities
{
    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    //public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
            // Customize the ASP.NET Identity model and override the defaults if needed.
            // For example, you can rename the ASP.NET Identity table names and more.
            // Add your customizations after calling base.OnModelCreating(builder);
        }

        public DbSet<Company> Company { get; set; }
        public DbSet<CompanyShops> CompanyShops { get; set; }
        public DbSet<Shop> Shop { get; set; }
        public DbSet<Balance> Balance { get; set; }
        public DbSet<Card> Card { get; set; }
        public DbSet<Code> Code { get; set; }
        public DbSet<Sale> Sale { get; set; }
        public DbSet<RemainingBalance> RemainingBalance { get; set; }
        public DbSet<CompanyUser> CompanyUser { get; set; }
        public DbSet<ShopUser> ShopUser { get; set; }
        public DbSet<EmailTemplate> EmailTemplate { get; set; }


        public DbSet<ProfileViewModel> ProfileViewModel { get; set; }
        public DbSet<UserViewModel> UserViewModel { get; set; }
        public DbSet<UserCompanyShopViewModel> UserCompanyShopViewModel { get; set; }
        public DbSet<SaleViewModel> SaleViewModel { get; set; }
        public DbSet<CreateSaleViewModel> CreateSaleViewModel { get; set; }

    }

    public class DesignTimeDbContextFactory : IDesignTimeDbContextFactory<ApplicationDbContext>
    {
        public ApplicationDbContext CreateDbContext(string[] args)
        {
            IConfigurationRoot configuration = new ConfigurationBuilder()
                .SetBasePath(Directory.GetCurrentDirectory())
                .AddJsonFile("appsettings.json")
                .Build();
            var builder = new DbContextOptionsBuilder<ApplicationDbContext>();
            var connectionString = configuration.GetConnectionString("DefaultConnection");
            builder.UseSqlServer(connectionString);

            return new ApplicationDbContext(builder.Options);
        }
    }
}