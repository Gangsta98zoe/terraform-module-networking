# Módulo: networking

Crea la red base en AWS: VPC, subredes pública y privada, Internet Gateway y tabla de rutas.

## Recursos creados

| Recurso | Descripción |
|---|---|
| `aws_vpc` | Red virtual privada principal |
| `aws_subnet` (public) | Subred pública con IP pública automática |
| `aws_subnet` (private) | Subred privada interna |
| `aws_internet_gateway` | Puerta de enlace a Internet |
| `aws_route_table` | Tabla de rutas pública |
| `aws_route_table_association` | Asociación tabla de rutas → subred pública |

## Uso

```hcl
module "networking" {
  source              = "github.com/Gangsta98zoe/terraform-module-networking?ref=v0.1.0"
  vpc_cidr_block      = "10.0.0.0/16"
  public_subnet_cidr  = "10.0.1.0/24"
  private_subnet_cidr = "10.0.2.0/24"
  environment         = "dev"
  name_prefix         = "prueba2"
}
```

## Versiones

| Versión | Descripción |
|---|---|
| v0.1.0 | Módulo inicial: VPC, subredes, IGW, tabla de rutas |

## Justificación SemVer
- v0.1.0: primera versión funcional del módulo.
- Nuevas variables/outputs → incrementa MINOR.
- Corrección de bug → incrementa PATCH.

---
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.100.0 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [aws_internet_gateway.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_route_table.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_subnet.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_az_private"></a> [az\_private](#input\_az\_private) | Zona de disponibilidad para subred privada | `string` | `"us-east-1b"` | no |
| <a name="input_az_public"></a> [az\_public](#input\_az\_public) | Zona de disponibilidad para subred pública | `string` | `"us-east-1a"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Entorno de despliegue | `string` | `"dev"` | no |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | Prefijo para nombrar los recursos | `string` | `"prueba2"` | no |
| <a name="input_private_subnet_cidr"></a> [private\_subnet\_cidr](#input\_private\_subnet\_cidr) | CIDR block para la subred privada | `string` | `"10.0.2.0/24"` | no |
| <a name="input_public_subnet_cidr"></a> [public\_subnet\_cidr](#input\_public\_subnet\_cidr) | CIDR block para la subred pública | `string` | `"10.0.1.0/24"` | no |
| <a name="input_vpc_cidr_block"></a> [vpc\_cidr\_block](#input\_vpc\_cidr\_block) | CIDR block para la VPC | `string` | `"10.0.0.0/16"` | no |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_private_subnet_id"></a> [private\_subnet\_id](#output\_private\_subnet\_id) | ID de la subred privada |
| <a name="output_public_subnet_id"></a> [public\_subnet\_id](#output\_public\_subnet\_id) | ID de la subred pública |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | ID de la VPC creada |
