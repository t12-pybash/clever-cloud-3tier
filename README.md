# clever-cloud-3tier

Terraform stack deploying a 3-tier Java/PostgreSQL application on [Clever Cloud](https://clever.cloud) (eu-fr-1, Paris) — EU sovereign cloud infrastructure.

Built as a working implementation of an Internal Developer Platform (IDP) stack pattern — demonstrating how a Cycloid-style service catalogue entry would provision a standard application stack on EU sovereign cloud infrastructure.

## Architecture

```
Internet
   │
   ▼
[Presentation Tier]   Java WAR — Clever Cloud runtime (auto-scaling XS→M)
   │
   ▼
[Application Tier]    Java WAR — Clever Cloud runtime (private, XS→M)
   │
   ▼
[Data Tier]           Managed PostgreSQL — Clever Cloud dev plan (eu-fr-1)
```

All resources provisioned in Clever Cloud's `par` (eu-fr-1, Paris) region — EU data residency enforced at the infrastructure layer.

## Prerequisites

- [Terraform](https://terraform.io) >= 1.0
- [clever-tools](https://github.com/CleverCloud/clever-tools) CLI (`npm install -g clever-tools`)
- A Clever Cloud account

## Authentication

```bash
clever login   # opens browser, stores token at ~/.config/clever-cloud/clever-tools.json
```

Export credentials for the Terraform provider:

```bash
export CC_CONSUMER_KEY=<consumer_key>
export CC_CONSUMER_SECRET=<consumer_secret>
export CLEVER_TOKEN=<token>
export CLEVER_SECRET=<secret>
export CC_ORGANISATION=<org_id>
```

## Usage

```bash
cp terraform.tfvars.example terraform.tfvars
# edit terraform.tfvars with your org_id

terraform init
terraform plan
terraform apply
```

## Outputs

| Output | Description |
|---|---|
| `presentation_url` | Public HTTPS URL for the presentation tier |
| `db_host` | PostgreSQL hostname (sensitive) |
| `db_name` | PostgreSQL database name |

## Destroy

```bash
terraform destroy
```

## Related

- [t-12.io](https://t-12.io) — write-ups on platform engineering and sovereign cloud
- [homelab-gitops](https://github.com/t12-pybash/homelab-gitops) — 5-node bare-metal Kubernetes platform
