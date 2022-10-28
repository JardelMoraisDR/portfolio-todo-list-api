using CrudApi.Models;
using System.Collections.Generic;
using ToDoListApi.Models;
using System.Linq;

namespace ToDoListApi.Repositories
{
    public class TaskRepository : ITaskRepository
    {
        private readonly Context context;

        public TaskRepository(Context context)
        {
            this.context = context;
        }

        public TaskModel Find(int id)
        {
            var task = context.Tasks.Find(id);
            return task;
        }

        public IEnumerable<TaskModel> GetAll()
        {
            return context.Tasks.ToList();
        }

        public void Insert(TaskModel task)
        {
            context.Tasks.Add(task);
            context.SaveChanges();
        }

        public void Remove(int id)
        {
            var task = context.Tasks.Find(id);
            context.Tasks.Remove(task);
            context.SaveChanges();
        }

        public void Update(TaskModel task)
        {
            context.Tasks.Update(task);
            context.SaveChanges();
        }
    }
}