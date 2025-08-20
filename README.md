🚀 Automating AWS VPC, Subnets, and S3 with Terraform

This project uses Terraform to create an AWS VPC, public and private subnets, and an S3 bucket.
It explains the prerequisites, setup steps, and how to verify your infrastructure both from Terraform and AWS Console.

📋 Prerequisites

Before running this project, make sure you have:

Terraform installed
Check version: terraform -v

Install Terraform Guide

AWS Account with permissions to create:

    VPC

    Subnets

    S3 buckets

    (Optionally EC2, if needed later)

AWS Access Key ID & Secret Access Key

    Go to AWS Console → IAM → Users

    Select your IAM user

    Open Security credentials tab

    Under Access keys, click Create access key

    Choose Command Line Interface (CLI)

    Copy or download the keys (.csv)

        ⚠️ The Secret Access Key is shown only once!

Configure them on your system:

    aws configure

    AMI ID (if you extend this project to EC2 instances)

        Find it in AWS Console → EC2 → AMIs

        Ensure the AMI is in the same region as defined in main.tf.

📂 Project Structure

    main.tf → Terraform configuration file i have attached form of main.tf file you can use it 

        Defines AWS provider

        Creates VPC, subnets (public & private), and S3 bucket

⚙️ Usage Steps
1️⃣ Initialize Terraform

terraform init

This downloads the required AWS provider plugin.
2️⃣ Validate the Configuration

terraform validate

Ensures your .tf file syntax is correct.
3️⃣ Preview the Changes

terraform plan

Shows which resources Terraform will create in AWS.
4️⃣ Apply the Configuration

terraform apply -auto-approve

Terraform will:

    Authenticate with AWS using your credentials

    Create a VPC, 2 subnets (public & private), and an S3 bucket

5️⃣ Verify the Resources

Check in the AWS Console:

    VPC Dashboard → see your new VPC & subnets

    S3 Dashboard → see the new bucket

🛑 Cleanup

To delete all created resources:

terraform destroy -auto-approve

🔐 Security Notes

    Never hardcode AWS keys in main.tf

    Store them in:

        ~/.aws/credentials

        Environment variables

        AWS Secrets Manager (best practice)

    Always use IAM users, not root account

