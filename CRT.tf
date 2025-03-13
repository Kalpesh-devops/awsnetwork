resource "aws_route_table" "CRT" {
    vpc_id = aws_vpc.main.id
    route{
        cidr_block="0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.natgate.id
    }
    

  
}

resource "aws_route_table_association" "forCRT" {
    route_table_id = aws_route_table.CRT.id
    subnet_id = aws_subnet.private-subnet.id
  
}