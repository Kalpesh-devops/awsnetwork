resource "aws_instance" "ec2-network" {
    instance_type = "t2.micro"
    ami = "ami-08b5b3a93ed654d19"
    associate_public_ip_address = "true"
    subnet_id = aws_subnet.public-subnet.id
    
  
}

resource "aws_instance" "ec2-network-private" {
    instance_type = "t2.micro"
    ami = "ami-08b5b3a93ed654d19"
    subnet_id = aws_subnet.private-subnet.id
    
  
}