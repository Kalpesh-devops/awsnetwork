resource "aws_security_group" "sg" {
    vpc_id = aws_vpc.main.id
     tags= {
        Name="sg-terraform"
     }
    ingress {
        from_port = "80"
        to_port = "80"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        
    }
    ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allows access from any IP address (0.0.0.0/0)
  }

  # Outbound (Egress) rule: Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # -1 means all protocols
    cidr_blocks = ["0.0.0.0/0"]  # Allows all outbound traffic
    description = "Allow all outbound traffic"
  }
}

    


  
