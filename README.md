# hosts-discovery

Terraform module to auto discovery host names from AWS Load balancers.

## Usage

```hcl
provider "aws" {
  region = "us-east-1"
}

module "elb-discovery" {


}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| environment | Environment, e.g. 'uw2', 'us-west-2', OR 'prod', 'staging', 'dev', 'UAT' | `string` | `non-prod` | yes |
| name | Solution name, e.g. 'ELB' or 'Discovery' | `string` | `ELBDomainDiscovery` | yes |
| skip\_tag | ELB Tag key for skip discovery | `string` | `SkipDomainDiscovery` | no |

