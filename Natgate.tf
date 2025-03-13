resource "aws_eip" "elasticip" {
    domain = "vpc"
    tags = {
      Name="elasticip"
    }
  
}




resource "aws_nat_gateway" "natgate" {
    subnet_id = aws_subnet.public-subnet.id
    allocation_id = aws_eip.elasticip.id

    tags = {
      Name="natgate"
    }

  
}