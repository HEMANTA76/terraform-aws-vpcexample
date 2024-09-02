## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.9 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.65.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_internet_gateway.igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_internet_gateway_attachment.igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway_attachment) | resource |
| [aws_nat_gateway.ngw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_subnet.subnets](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [aws_caller_identity.ctx](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_default_tags.ctx](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/default_tags) | data source |
| [aws_region.ctx](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | CIDR block for the VPC | `string` | n/a | yes |
| <a name="input_enable_dns_hostnames"></a> [enable\_dns\_hostnames](#input\_enable\_dns\_hostnames) | (Optional A boolean flag to enable DNS hostnames in the VPC. Defaulted to false) | `bool` | `false` | no |
| <a name="input_enable_dns_support"></a> [enable\_dns\_support](#input\_enable\_dns\_support) | (Optional) A boolean flag to enable/disable DNS support in the VPC. Defaults to true. | `bool` | `true` | no |
| <a name="input_enable_internet_gatway"></a> [enable\_internet\_gatway](#input\_enable\_internet\_gatway) | (Optional) A boolean flag to enable/disable the Internet Gateway. Defaults to false. | `bool` | `false` | no |
| <a name="input_enable_nat_gateway"></a> [enable\_nat\_gateway](#input\_enable\_nat\_gateway) | (Optional) A boolean flag to enable/disable the NAT Gateway. Defaults to false. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | VPC name. | `string` | n/a | yes |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | A map of subnets to create in the VPC | <pre>map(object({<br>    cidr_block        = string<br>    availability_zone = string<br>    public            = optional(bool, false)<br>  }))</pre> | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A map of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | VPC Arn |
| <a name="output_cidr_block"></a> [cidr\_block](#output\_cidr\_block) | CIDR block for the VPC |
| <a name="output_id"></a> [id](#output\_id) | VPC ID |
| <a name="output_name"></a> [name](#output\_name) | VPC name. |
| <a name="output_subnet_ids"></a> [subnet\_ids](#output\_subnet\_ids) | Subnet IDs. |
