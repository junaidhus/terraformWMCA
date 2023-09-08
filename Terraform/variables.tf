variable "instance_name" {
  type = list(any)
  default = [
    "web_server_leg_001",
    "web_server_leg_002",
    "web_server_leg_003",
  ]
}

variable "is_production" {
  type        = string
  description = "Is prod (yes/no)?"
  default     = "no"
}

variable "infrastructure_count" {
  default = 3
}

variable "cidr_block_for_ingress" {
  default = "0.0.0.0/0"
}

variable "instance_size_map" {
  default = {
    dev  = "t1.micro",
    test = "t2.micro",
    live = "t2.large"
  }
}
variable "instance_size_list" {
  default = ["t1.micro", "t2.micro", "t2.large"]
}

