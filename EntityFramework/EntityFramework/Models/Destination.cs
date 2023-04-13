using System;
using System.Collections.Generic;

namespace EntityFramework.Models;

public partial class Destination
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public string Description { get; set; } = null!;

    public decimal Price { get; set; }

    public string Photo { get; set; } = null!;
}
