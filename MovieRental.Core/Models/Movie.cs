﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json.Serialization;
using System.Threading.Tasks;

namespace MovieRental.Core.Models
{
    public class Movie : BaseModel
    {
        public string Title { get; set; }
        public string Description { get; set; }
        public decimal? Price { get; set; }
        public string Category { get; set; }
        public DateTime TransactionDate { get; set; }
        [JsonIgnore]
        public ICollection<MovieTransaction> MovieTransactions { get; set; }
        [JsonIgnore]
        public ICollection<Rentals> Rentals { get; set; }
    }
}
