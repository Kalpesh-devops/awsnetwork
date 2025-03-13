resource "aws_subnet" "public-subnet" {
    vpc_id = aws_vpc.main.id
    cidr_block = var.cidr_block_public_sub
    availability_zone = var.az_pub_sub
    tags_all = {
      Name="public-subnet"
    }
  
}