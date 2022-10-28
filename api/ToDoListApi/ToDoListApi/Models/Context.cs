using Microsoft.EntityFrameworkCore;
using ToDoListApi.Models;

namespace CrudApi.Models
{
    public class Context : DbContext
    {

        public Context(DbContextOptions<Context> contextOptions) : base(contextOptions)
        {
        }

        public DbSet<TaskModel> Tasks { get; set; }

    }
}