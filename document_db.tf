resource "aws_docdb_cluster" "document_db_pedidos_fiap" {
    cluster_identifier      = "document-db-pedidos-fiap-cluster"
    engine                  = "docdb"
    master_username         = var.MONGODB_USER
    master_password         = var.MONGODB_PASSWORD
    backup_retention_period = 5
    preferred_backup_window = "06:00-09:00"
    skip_final_snapshot     = true
    storage_type = "standard"
    vpc_security_group_ids = [aws_security_group.database.id]
    tags = {
        Environment = "DEV"
        Name        = "Pedidos DEV"
    }
}


resource "aws_docdb_cluster_instance" "instance_db_fiap" {
  cluster_identifier = aws_docdb_cluster.document_db_pedidos_fiap.id
  identifier        = "instance1"
  instance_class    = "db.t3.medium" // trocar para db.t3.medium
}
