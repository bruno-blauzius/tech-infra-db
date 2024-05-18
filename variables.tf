variable "NOME_REPOSITORIO" {
  type = string
}

variable "CLUSTER_NAME" {
  type = string
}

variable "REGION" {
  type = string
  default = "us-east-1"
}

variable "RDS_CLUSTER_ENTREGA_IDENTIFIER" {
  type = string
}

variable "RDS_CLUSTER_PEDIDO_IDENTIFIER" {
  type = string
}

variable "DB_DATABASE" {
  type = string
}

variable "DB_USERNAME" {
  type = string
}

variable "DB_PASSWORD" {
  type = string
}

variable "DB_PORT" {
  type = string
}

# variable "MONGODB_USER" {
#   type = string
# }

# variable "MONGO_PORT" {
#   type = string
# }


# variable "MONGODB_PASSWORD" {
#   type = string
# }