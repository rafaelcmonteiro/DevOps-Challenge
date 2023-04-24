resource "aws_db_instance" "default" {
  allocated_storage    = 10
  publicly_accessible  = true
  db_name              = "${var.DB_NAME}"
  identifier           = "${var.RDS_NAME}-db"
  engine               = "${var.DB_ENGINE}"
  engine_version       = "${var.DB_ENGINE_VERSION}"
  instance_class       = "db.t2.micro"
  username             = "${var.DB_USERNAME}"
  password             = "${var.DB_PASSWORD}"
  skip_final_snapshot  = true
  multi_az             = false
  storage_type         = "gp2"
  

  tags = {
    Name = "${var.RDS_NAME}-db"
  }
}