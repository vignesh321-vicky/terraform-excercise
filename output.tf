# Output the public IP address to access the server
output "public_ip" {
  value = aws_instance.web_server.public_ip
}