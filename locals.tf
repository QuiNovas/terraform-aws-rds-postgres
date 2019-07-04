locals {
  tags = merge(
    var.tags,
    {
      "Name" = var.name
    },
  )
}

