variable "database_name" {
  description = "The name of the database to create when the DB instance is created."
  type        = string
}

variable "engine_version" {
  default     = "10.6"
  description = "The version of PostgreSQL used when the DB instance is created."
  type        = string
}

variable "instance_class" {
  description = "The instance type of the RDS instance."
  type        = string
}

variable "name" {
  description = "The name of resources created, used either directly or as a prefix."
  type        = string
}

variable "parameter" {
  default     = []
  description = "A list of DB parameters to apply. Note that parameters may differ from a family to an other. Full list of all parameters can be discovered via aws rds describe-db-parameters after initial creation of the group."
  type        = list(object({
      apply_method  = string
      name          = string
      value         = string
  }))
}

variable "subnet_ids" {
  description = "A list of VPC subnet IDs for the aws_db_subnet_group."
  type        = list(string)
}

variable "tags" {
  default     = {}
  description = "A mapping of tags to assign to the resources."
  type        = map(string)
}

variable "username" {
  description = "Username for the master DB user."
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID of the DB's aws_security_group."
  type        = string
}

