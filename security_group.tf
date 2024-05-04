resource "aws_security_group" "database" {
  name        = "database-sg"
  description = "Security group for database"
  
  ingress {
    from_port   = var.DB_PORT
    to_port     = var.DB_PORT
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Permitindo acesso de qualquer IP, ajuste conforme necessário
    description = "Mysql DB"
  }

  ingress {
    from_port   = var.MONGO_PORT
    to_port     = var.MONGO_PORT
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Permitindo acesso de qualquer IP, ajuste conforme necessário
    description = "Mongo DB"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}