variable "instance_type" {
  default = "t3.micro"
}

variable "environment" {
  default = "Dev"
}

variable "project" {
  default = "Expense"
}

variable "server_names" {
  default = ["backend", "frontend", "mysql"]
}


variable "zone_id" {
    default = "12344555"
}

variable "instances" {
  type        = map
  default     = {
    mysql = "t3.micro"
    backend = "t3.micro"
    frontend = "t3.small"
  }
}

variable "domain_name"{
    default = "awsexpense.online"
}