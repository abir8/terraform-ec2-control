output "instance_id" {
  description = "The EC2 instance id"
  value       = aws_instance.example.id
}

output "public_ip" {
  description = "Public IP address"
  value       = aws_instance.example.public_ip
}
