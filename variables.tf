variable "vpc_cidr_block" {
  description = "CIDR block para la VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block para la subred pública"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block para la subred privada"
  type        = string
  default     = "10.0.2.0/24"
}

variable "az_public" {
  description = "Zona de disponibilidad para subred pública"
  type        = string
  default     = "us-east-1a"
}

variable "az_private" {
  description = "Zona de disponibilidad para subred privada"
  type        = string
  default     = "us-east-1b"
}

variable "environment" {
  description = "Entorno de despliegue"
  type        = string
  default     = "dev"
}

variable "name_prefix" {
  description = "Prefijo para nombrar los recursos"
  type        = string
  default     = "prueba2"
}
