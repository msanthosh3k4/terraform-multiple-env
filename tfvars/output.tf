variable "instances" {
  default     = ["mysql","frontend","backend"]
}

variable "environment"{

}

variable "project" {
    default = "expense"
}

variable "zone_id" {
  default = "Z065591046MSP9V4T6B0"
}

variable "domain_name" {
  default = "awsexpense.online"
}