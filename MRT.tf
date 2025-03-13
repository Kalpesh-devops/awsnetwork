resource "aws_route_table" "MRT" {
    vpc_id = aws_vpc.main.id

    route {
     cidr_block="0.0.0.0/0"
     gateway_id = aws_internet_gateway.igw.id
    }
    
    tags_all = {
      Name="MRT"
    }
  
}

resource "aws_route_table_association" "formrt" {
    subnet_id = aws_subnet.public-subnet.id
    route_table_id = aws_route_table.MRT.id

  
}