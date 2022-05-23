variable "subnet_ids" {
  default = [""]
}

variable "security_group_ids" {
  default = ""
}

variable "env_name" {
  default = ""
}

variable "node_type" {
  default = "cache.t3.micro"
}

variable "engine_version" {
  default = "6.x"
}

variable "parameter_group_name" {
  default = "default.redis6.x"
}