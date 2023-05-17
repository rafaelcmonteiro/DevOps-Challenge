resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name = "dev-vpc"
  }
}

## ---- 3 subnets, 1 public e duas privadas
resource "aws_subnet" "private_subnet_a" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-2a"
  map_public_ip_on_launch = false
  tags = {
    Name = "dev_subnet_a"
  }
}

resource "aws_subnet" "private_subnet_b" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-east-2b"
  map_public_ip_on_launch = false
  tags = {
    Name = "dev_subnet_b"
  }
}

resource "aws_subnet" "public_subnet_c" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "us-east-2c"
  map_public_ip_on_launch = true
  tags = {
    Name = "dev_subnet_c"
  }
}

## -----

resource "aws_internet_gateway" "dev_igw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "dev_natgw"
  }
}

resource "aws_route_table" "dev_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.dev_igw.id
  }
  tags = {
    Name = "dev_rt"
  }
}

resource "aws_route_table_association" "dev_public_c_association" {
  subnet_id      = aws_subnet.public_subnet_c.id
  route_table_id = aws_route_table.dev_rt.id
}

resource "aws_eip" "eip" {
  vpc = true
}

resource "aws_nat_gateway" "dev_natgw" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public_subnet_c.id
  depends_on    = [aws_internet_gateway.dev_igw]
  tags = {
    Name = "dev_natgw"
  }
}

resource "aws_route_table" "dev_private_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.dev_natgw.id
  }
  tags = {
    Name = "dev_private_rt"
  }
}

resource "aws_route_table_association" "dev_private_a_association" {
  subnet_id      = aws_subnet.private_subnet_a.id
  route_table_id = aws_route_table.dev_private_rt.id
}

resource "aws_route_table_association" "dev_private_b_association" {
  subnet_id      = aws_subnet.private_subnet_b.id
  route_table_id = aws_route_table.dev_private_rt.id
}
