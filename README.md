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

- La versión inicial es **v0.1.0** por ser el primer módulo funcional sin cambios de arquitectura previa.
- Cualquier nueva variable u output incrementará el **MINOR**.
- Correcciones de código incrementarán el **PATCH**.

