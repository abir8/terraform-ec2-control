variable "aws_region" {
  description = "AWS region to create resources in"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "my_ip_cidr" {
  description = "Your IP in CIDR notation to allow SSH/ICMP (e.g. 1.2.3.4/32)"
  type        = string
  default     = "0.0.0.0/0" # change this to tighten security
}

variable "create_key_pair" {
  description = "Whether to create an aws_key_pair resource from a provided public key"
  type        = bool
  default     = true
}

variable "key_name" {
  description = "Key name to use (if create_key_pair is true)"
  type        = string
  default     = "terraform-ashraf-key"
}

variable "public_key_path" {
  description = "Path to your public key file (for creating key pair)"
  type        = string
  default     = "~/.ssh/ashraf-ec2-key.pub"
}
