using Microsoft.EntityFrameworkCore;

namespace CrudClientes.Models
{
    public class Context : DbContext
    {
        public DbSet<ClientModel> Client { get; set; }

        public Context(DbContextOptions<Context> options) : base(options)
        {
            Database.EnsureCreated();
        }           
    }
}
