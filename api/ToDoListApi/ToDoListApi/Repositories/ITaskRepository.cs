using System.Collections.Generic;
using ToDoListApi.Models;

namespace ToDoListApi.Repositories
{
    public interface ITaskRepository
    {
        void Insert(TaskModel task);

        IEnumerable<TaskModel> GetAll();

        TaskModel Find(int id);

        void Remove(int id);

        void Update(TaskModel task);
    }
}