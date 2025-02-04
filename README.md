## Terraform EC2 Setup

### Introduction
This repository contains Terraform code to spin up an EC2 Linux instance within AWS using Infrastructure as Code (IaC).

### Prerequisites
- AWS Account
- Terraform installed on your local machine
- GitHub Actions enabled for automation

### Steps to Execute
1. Clone the repository:
   `git clone <repository_url> cd <repository_name>`

2. Initialize Terraform:
   `terraform init`

3. Apply the Terraform plan:
   `terraform plan`

4.Apply the changes:
  `terraform apply -auto-approve`
   
5. To retrieve and display the public IP address ,you can define an output variable in your outputs.tf file
   
6. Access the web server by navigating to `http://<public_ip>` in a browser.

### Assumptions 
- The instance type used is `t2.micro`, which is covered under AWS Free Tier.
- The default VPC and public subnet are used.
- The Terraform configuration uses dynamic blocks to create both the ingress and egress rules in the security group. This approach allows for more flexible and maintainable  
  code when specifying rules for HTTP (port 80) and SSH (port 22) traffic.
- The necessary packages are installed using a user data script.
- A data block is used to filter and select the appropriate Amazon Machine Image (AMI) for launching the EC2 instance. This ensures that the latest or most suitable AMI is used 
  based on predefined filters.
- GitHub Actions is integrated into the repository to validate the Terraform code. This automated workflow runs checks to ensure that the code is syntactically correct and 
  follows best practices before deployment.
 

### Cleanup
To destroy the infrastructure, run:
`terraform destroy -auto-approve`


