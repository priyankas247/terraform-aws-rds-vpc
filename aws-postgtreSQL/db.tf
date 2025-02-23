#PostgreSQL RDS
resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "rds_subnet_group"
  subnet_ids = [aws_subnet.private_subnet.id]
}

resource "aws_db_instance" "postgres_rds" {
  allocated_storage      = 20
  engine                = "postgres"
  engine_version        = "14.3"
  instance_class        = var.db_instance_type
  username             = var.db_username
  password             = var.db_password
  db_subnet_group_name  = aws_db_subnet_group.rds_subnet_group.name
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  publicly_accessible  = false
  skip_final_snapshot   = true

  tags = { Name = "PostgreSQL-RDS" }
}