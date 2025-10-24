variable "instance_type" {
  validation {
    condition     = contains(["t2.micro", "t3.micro", "t3.small"], var.instance_type)
    error_message = "Instance type must be one of: t2.micro, t3.micro, or t3.small."
  }
}

variable "sg_Id" {
  
}

variable "tags_name" {
    default = {}
}

output "private_ip" {
  value       = aws_instance.this.private_ip
}

output "public_ip" {
  value       = aws_instance.this.public_ip
}
