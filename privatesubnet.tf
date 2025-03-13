resource "aws_subnet" "private-subnet" {
    vpc_id = aws_vpc.main.id
    cidr_block = var.cidr_block_private_sub
    availability_zone = var.az_private_sub
    tags_all = {
      Name="private-subnet"
    }
  
}