## Terraform EC2 Setup

### Introduction
This repository contains Terraform code to spin up an EC2 Linux instance within AWS using Infrastructure as Code (IaC).

### Prerequisites
- AWS Account
- Terraform installed on your local machine
- GitHub Actions enabled for automation

### Steps to Execute
1. Clone the repository:
   git clone <repository_url> cd <repository_name>

2. Initialize Terraform:
   terraform init

3. Validate the Terraform configuration:
   terraform validate

4. Apply the Terraform plan:
   terraform plan

6.Apply the changes:
  terraform -auto-approve
   
5. To retrieve and display the public IP address ,you can define an output variable in your outputs.tf file
   
6. Access the web server by navigating to `http://<public_ip>` in a browser.

### Assumptions and Prerequisites
- The instance type used is `t2.micro`, which is covered under AWS Free Tier.
- The default VPC and public subnet are used.
- Security groups allow HTTP (port 80) and SSH (port 22) traffic.

### Web Server Setup
- The EC2 instance deploys a basic web server that serves an `index.html` page displaying `Hello, World!`.
- The necessary packages are installed using a user data script.

### Cleanup
To destroy the infrastructure, run:
terraform destroy -auto-approve


