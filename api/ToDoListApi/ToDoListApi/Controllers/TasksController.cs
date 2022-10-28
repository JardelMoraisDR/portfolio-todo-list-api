using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using ToDoListApi.Models;
using ToDoListApi.Repositories;

namespace ToDoListApi.Controllers
{
    [ApiController]
    [Route("api/[Controller]")]
    public class TasksController : ControllerBase
    {
        private readonly ITaskRepository taskRepository;

        public TasksController(ITaskRepository taskRepository)
        {
            this.taskRepository = taskRepository;
        }

        [HttpGet]
        public IEnumerable<TaskModel> GetAll()
        {
            return taskRepository.GetAll();
        }

        [HttpGet("{id}", Name = "GetTask")]
        public IActionResult GetById(int id)
        {
            var task = taskRepository.Find(id);
            if (task == null)
                return NotFound();

            return new ObjectResult(task);
        }

        [HttpPost]
        public IActionResult Create([FromBody] TaskModel taskModel)
        {
            if (taskModel==null)
                return BadRequest();

            taskRepository.Insert(taskModel);

            return CreatedAtRoute("GetTask", new { id = taskModel.Id }, taskModel);
        }

        [HttpPut("{id}")]
        public IActionResult Update(int id, [FromBody] TaskModel taskModel)
        {
            if (taskModel == null || taskModel.Id != id)
                return BadRequest();

            var task = taskRepository.Find(id);

            if (task == null)
                return NotFound();

            task.Description = taskModel.Description;
            task.Value = taskModel.Value;

            taskRepository.Update(task);
            return new NoContentResult();
        }

        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            var task = taskRepository.Find(id);

            if (task == null)
                return NotFound();

            taskRepository.Remove(id);
            return new NoContentResult();
        }

    }
}