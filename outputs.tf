output "instance_public_ip" {
  value       = "Public IP = ${aws_instance.devops_RandD.public_ip}"
  description = "The public IP address of the EC2 instance"
}