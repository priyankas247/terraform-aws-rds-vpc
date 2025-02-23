#EC2 Instance with Nginx
resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.public_subnet.id
  security_groups = [aws_security_group.web_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              sudo yum install -y nginx
              sudo systemctl start nginx
              sudo systemctl enable nginx
              EOF

  tags = { Name = "WebServer" }
}