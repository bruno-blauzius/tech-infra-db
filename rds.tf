resource "aws_db_instance" "rds_fiap_entrega" {
  allocated_storage    = 10
  identifier           = var.RDS_CLUSTER_ENTREGA_IDENTIFIER
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  db_name              = var.DB_DATABASE
  username             = var.DB_USERNAME
  password             = var.DB_PASSWORD
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  port                 = var.DB_PORT
  publicly_accessible  = true
  vpc_security_group_ids = [aws_security_group.database.id]
  tags = {
    Environment = "DEV"
    Name        = "Entrega DEV"
  }
}


resource "aws_db_instance" "rds_fiap_pedido" {
  allocated_storage    = 10
  identifier           = var.RDS_CLUSTER_PEDIDO_IDENTIFIER
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  db_name              = var.DB_DATABASE
  username             = var.DB_USERNAME
  password             = var.DB_PASSWORD
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  port                 = var.DB_PORT
  publicly_accessible  = true
  vpc_security_group_ids = [aws_security_group.database.id]
  tags = {
    Environment = "DEV"
    Name        = "Pedido DEV"
  }
}
