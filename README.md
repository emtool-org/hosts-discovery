# hosts-discovery

Terraform module to auto discovery host names from AWS Load balancers.

## Usage

```hcl
provider "aws" {
  region = "us-east-1"
}

module "elb-discovery" {
  name     = "ELBDomainDiscovery"
  skip_tag = "SkipDomainDiscovery"
  regions  = ["us-east-1", "eu-west-1"]
  api_url  = "https://import.emtool.org/v1/domains/import/JAfqzxRdCuD9oO"
  _source  = "QA-account"
  gateid   = "11"

}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| environment | Environment, e.g. 'uw2', 'us-west-2', OR 'prod', 'staging', 'dev', 'UAT' | `string` | `non-prod` | yes |
| name | Solution name, e.g. 'ELB' or 'Discovery' | `string` | `ELBDomainDiscovery` | yes |
| skip\_tag | ELB Tag key for skip discovery | `string` | `SkipDomainDiscovery` | no |
| regions | List of regions for discovery | `list(string)` | ["us-east-1"] | yes |
| api\_url | API url for post queries | `string` | `https://import.emtool.org/v1/domains/import/` | yes |
| api\_token | Authorization token for API | 'string' | | yes |
| _source | ???? | `string` | `ELB` | yes |
| gateid | ID of resolver gate | `string` |  | no |
