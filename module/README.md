<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cidr\_vpc | n/a | `string` | `"172.124.0.0/16"` | no |
| private\_cidr | n/a | `list` | <pre>[<br>  "172.124.5.0/24",<br>  "172.124.6.0/24"<br>]</pre> | no |
| public\_cidr | n/a | `list` | <pre>[<br>  "172.124.1.0/24",<br>  "172.124.2.0/24"<br>]</pre> | no |
| tags | n/a | `map` | <pre>{<br>  "application": "test",<br>  "environment": "dev"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| ig\_id | n/a |
| ip1\_output | n/a |
| ip2\_output | n/a |
| nat1\_id | n/a |
| nat2\_id | n/a |
| ng\_id1 | n/a |
| ng\_id2 | n/a |
| public\_output\_1 | n/a |
| public\_output\_2 | n/a |
| rt1 | n/a |
| vpc\_id | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
