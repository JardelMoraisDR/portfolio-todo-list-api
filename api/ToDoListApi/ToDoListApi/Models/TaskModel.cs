//using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ToDoListApi.Models
{
    public class TaskModel 
    {
        [Column("Id")]
        public int Id { get; set; }

        [Column("Description")]
        public string Description { get; set; }

        [Column("Value")]
        public int Value { get; set; }
    }
}