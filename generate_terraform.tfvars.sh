#!/bin/bash
PUBLIC_IP=$(curl -s ipinfo.io/ip)

cat << EOF > Terraform/terraform.tfvars
# Terraform variables
# See 'variables.tf' for definitions

# Required
resource-group       = "testlab"
ip-whitelist         = ["${PUBLIC_IP}/32"]

# Optional (defaults are shown)
timezone             = "W. Europe Standard Time"
domain-name-label    = "testlab"
domain-dns-name      = "test.lab"
windows-user         = "labadmin"
linux-user           = "labadmin"
hackbox-hostname     = "hackbox"
elastic-hostname     = "elastic"
dc-hostname          = "dc"
winserv2019-hostname = "winserv2019"
win10-hostname       = "win10"
win10-size           = "Standard_B4ms"
winserv2019-size     = "Standard_B4ms"
dc-size              = "Standard_B4ms"
elastic-size         = "Standard_B4ms"
hackbox-size         = "Standard_B4ms"
EOF

cat Terraform/terraform.tfvars
