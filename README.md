# terraform-ec2-control

Contains Terraform configuration to create an EC2 instance and small AWS-CLI scripts to start, stop and terminate it.

Prerequisites:
- Terraform >= 1.0
- AWS CLI configured (`aws configure`) with credentials that have EC2 permissions
- Git

Usage:
1. `terraform init`
2. `terraform apply` (confirm). Note the output `instance_id`.
3. Start instance: `./start.sh <instance-id>`
4. Stop instance: `./stop.sh <instance-id>`
5. Terminate instance: `./terminate.sh <instance-id>`

Security: Update `variables.tf` to restrict `my_ip_cidr` to your IP (not `0.0.0.0/0`) before applying in production.


How to run Terraform (quick):

- Install Terraform and AWS CLI, and configure AWS CLI:
- aws configure (enter access key, secret, region)

Init and apply:

`terraform init`
`terraform apply`


Terraform will show the plan. Type yes to apply. After successful apply, terraform output `instance_id` or check the outputs printed.

Use scripts:

- `./start.sh <instance_id>`
- `./stop.sh  <instance_id>`
- `./terminate.sh <instance_id>`


Note: `terminate.sh` asks for confirmation before destroying the instance.