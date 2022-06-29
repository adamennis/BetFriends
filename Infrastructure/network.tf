# Internet Gateway 
/*
resource "aws_internet_gateway" "my-igw" {
    vpc_id = module.vpc.vpc_id # "${aws_vpc.my-vpc.id}"

    tags = {
        Name = "my-igw"
    }
}

#Custom route table to enable public subnets to connect to the internet
resource "aws_route_table" "my-public-route-table" {
    vpc_id =  module.vpc.vpc_id 
    route {
        cidr_block = "0.0.0.0/0" //subnet can reach everywhere
        gateway_id = "${aws_internet_gateway.my-igw.id}" //Route table uses this gateway to reach internet
    }

    tags = {
        Name = "my-public-route-table"
    }
}

# route table association for the public subnets
resource "aws_route_table_association" "route-table-public-subnet-1" {
    subnet_id = "${aws_subnet.my-subnet-public-1.id}"
    route_table_id = "${aws_route_table.my-public-route-table.id}"
}
*/