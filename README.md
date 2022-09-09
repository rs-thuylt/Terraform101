<a name="readme-top"></a>

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://www.terraform.io/docs">
    <img src="images/terraform-logo.png" alt="terraform-logo" width="400">
  </a>
</div>

<br/>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#iac-101">IaC 101</a></li>
    <li>
      <a href="#terraform-101">Terraform 101</a>
      <ul>
        <li><a href="#what-is-terraform">What is Terraform?</a></li>
        <li><a href="#featured-providers">Featured Providers</a></li>
      </ul>
    </li>
    <li><a href="#how-does-terraform-work">How does Terraform work?</a></li>
    <li><a href="#the-core-terraform-workflow">The core Terraform workflow</a></li>
    <li><a href="#what-is-terraform-used-for">What is Terraform used for?</a></li>
    <li><a href="#terraform-vs-cloudformation">Terraform vs. CloudFormation</a></li>
    <li>
      <a href="#getting-started">Getting started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li>
      <a href="#hands-on">Hands-on</a>
      <ul>
        <li>
          <a href="#create-your-ec2-resource-and-launch-your-ec2-instance">
            Create your EC2 resource and launch your EC2 instance
          </a>
        </li>
        <li>
          <a href="#variables">Variables</a>
        </li>
        <li>
          <a href="#modules">Modules</a>
        </li>
      </ul>
    </li>
    <li><a href="#troubleshooting">Troubleshooting</a></li>
    <li><a href="#exercises">Exercises</a></li>
    <li><a href="#faqs">FAQs</a></li>
    <li><a href="#references">References</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

<br/>

<!-- IaC 101 -->
# IaC 101
Infrastructure as Code (IaC) simplifies app development, configuration and runtime by managing and provisioning the infrastructure through code, instead of manually. IaC is an IT practice that leverages code to:
- Automate infrastructure provisioning, deployment, configuration and management.
- Orchestrate the operation of all infrastructure components, such as hardware, software, networks, virtual machines, containers, databases and cloud infrastructure elements.
- Configure, monitor and manage all infrastructure components and systems.

<p align="right"><a href="#readme-top">▲</a></p>

<!-- Terraform 101 -->
# Terraform 101

<!-- What is Terraform? -->
## What is Terraform?
<b>Terraform is an open-source</b>, an Infrastructure as Code (IaC) tool that lets you _building_, _changing_, _versioning_ infrastructure **safely** and **efficiently**.

<!-- <p align="right"><a href="#readme-top">▲</a></p> -->

<!-- Featured Providers -->
## Featured Providers
Popular providers used with Terraform, including major cloud providers.

<img src="images/terraform-featured-providers.png" alt="terraform-featured-providers" width="100%">

[See all service providers »](https://registry.terraform.io/browse/providers)

<p align="right"><a href="#readme-top">▲</a></p>

<!-- <br/> -->

<!-- How does Terraform work? -->
# How does Terraform work?
- Terraform allows users to define their entire infrastructure simply by using configuration files and version control.
- When a command is given to deploy and run a server, database or load balancer, Terraform parses the code and translates it into an Application Programming Interface (API) call to the resource provider.
- Terraform has two important components: <b>Terraform Core</b> and <b>Terraform Plugins</b>.

<p align="right"><a href="#readme-top">▲</a></p>

<!-- <br/> -->

<!-- The Core Terraform Workflow -->
# The core Terraform workflow
1. **Write** - you write Terraform configuration just like you write code, in your editor of choice.
2. **Plan** - it's time to commit your work and review the final plan before applying.
3. **Apply** - after one last check, you are ready to tell Terraform to provision real infrastructure.
<img src="images/terraform-workflow.png" alt="terraform-workflow" width="100%">

<p align="right"><a href="#readme-top">▲</a></p>

<!-- <br/> -->

<!-- What is Terraform used for? -->
# What is Terraform used for?
- **External resource management** - Terraform supports public and private cloud infrastructure, as well as network appliances and software as a service (SaaS) deployments.
- **Multi-cloud deployment** - the software tool's native ability to support multiple cloud services helps increase fault tolerance.
- **Multi-tier applications** - Terraform allows each resource collection to easily be scaled up or down as needed.
- **Self-service clusters** - the registries make it easy for users to find prepackaged configurations that can be used as is or modified to meet a particular need.
- **Software Defined Networking (SDN)** - Terraform's readability makes it easy for network engineers to codify the configuration for an SDN.
- **Resource scheduler** - Terraform modules can stop and start resources on AWS and allow Kubernetes to schedule Docker containers.
- **Disposable environments** - modules can be used to create an ad hoc, throwaway test environment for code before it's put into production.

<p align="right"><a href="#readme-top">▲</a></p>

<!-- <br/> -->

<!-- Terraform vs. CloudFormation -->
# Terraform vs. CloudFormation
<p align="center">
  <img src="images/terraform-vs-cloudformation.png" alt="terraform-vs-cloudformation" width="80%">
</p>

## Ease of use
While CloudFormation is confined to the services offered by AWS, Terraform spans across multiple Cloud Service Providers like AWS, Azure, Google Cloud Platform, and many more, Terraform covers most of the AWS resources.

## Language
CloudFormation uses either JSON or YAML. This makes CloudFormation easy to read and manage. But there is a constraint that doesn’t allow AWS developers to create CloudFormation templates greater than 51MB in size. In case the template exceeds this size limit, developers need to create a nested stack for the templates.

On the other hand, Terraform uses Hashicorp’s proprietary language called HCL (Hashicorp Configuration Language). This is also a JSON compatible language.

## State-management
Since CloudFormation is a managed AWS service, it checks the infrastructure consistently to detect whether the provisioned infrastructure is maintaining its state or not. CloudFormation receives a detailed response if anything changes.

On the other hand, Terraform stores the state of the infrastructure on the provisioning machine, may it be a virtual machine or a remote computer. The state is saved in the form of a JSON file, which serves as a map for Terraform describing the resources it manages.

To summarize, in Cloudformation, the state is governed by CloudFormation out-of-the-box, which prevents conflicting changes. In Terraform, the state is stored in a virtual machine or a remote computer. Another best practice for state management is that Terraform states can also be saved in storage services like S3. This has to be defined in the backend, hence making it easier and safer to manage.

## Cost
The best part about both these tools is that both are free of cost. Both of these tools have large communities with a lot of support and examples. Cloudformation has no price. The only fee that users incur is the cost of AWS service provisioned by CloudFormation. Terraform is a free and open-source tool. Terraform however offers a paid enterprise version that has additional collaboration and governance options.

## Multi-cloud Integration
If you are looking to provision services on multiple cloud platforms, Terraform is your go-to option. While Terraform supports all cloud vendors like AWS, GCP, Azure, and many others, CloudFormation is confined only to AWS. So, in case your environment involves multiple cloud deployments, Cloudformation is not for you. Suppose you are using AWS resources like EC2, S3, etc., you are best advised to stick to Cloudformation.

To deal with AWS’s compatibility, the latest version of Terraform now fully supports all the services in AWS. This version of Terraform is considered to be at par with CloudFormation to manage AWS cloud resources.

<p align="right"><a href="#readme-top">▲</a></p>

<!-- <br/> -->

<!-- Getting Started -->
# Getting Started

## Prerequisites
1. Terraform CLI
2. AWS account
3. AWS credential configured locally. The credentials can be stored in a file, and the path can be specified on the provider.

## Installation
Depending on which OS you are running on, your terraform installation might be different. In order to properly install, follow this instruction 👉 [Install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli?in=terraform/aws-get-started).

<p align="right"><a href="#readme-top">▲</a></p>

<!-- <br/> -->

<!-- Hands-on -->
# Hands-on

<!-- Configure the AWS Provider -->
### Configure the AWS Provider
- Create a file called `main.tf` and type the following
  ```hcl
  # Configure the AWS Provider
  provider "aws" {
    region = "ap-southeast-1"
  }
  ```

<!-- Create your EC2 resource and launch your EC2 instance -->
### Create your EC2 resource and launch your EC2 instance
- In `main.tf` file, type the following
  ```hcl
  # Create an EC2 instance
  resource "aws_instance" "ec2" {
    ami           = "ami-0b89f7b3f054b957e"
    instance_type = "t2.micro"

    tags = {
      Name = "EC2 from Terraform"
    }
  }
  ```

<!-- Variables -->
### Variables
- In `main.tf` file, type the following
  ```hcl
  # Create an EC2 instance
  resource "aws_instance" "ec2" {
    ami           = var.ami_value           👈 Use variable
    instance_type = var.instance_type_value 👈 Use variable

    tags = {
      Name = "EC2 from Terraform"
    }
  }

  # Create `ami_value` variable
  variable "ami_value" {
    type    = string
    default = "ami-0b89f7b3f054b957e"
  }

  # Create `instance_type_value` variable
  variable "instance_type_value" {
    type    = string
    default = "t2.micro"
  }
  ```

<!-- Modules -->
### Modules
- Create a file called `main.tf` and type the following
  ```hcl
  # Configure the AWS Provider
  provider "aws" {
    region = "ap-southeast-1"
  }

  # Import module
  module "ec2_module" {
    source = "./ec2"
  }
  ```

- Create a file called `ec2.tf` inside a module named `ec2` and type the following
  ```hcl
  # Create an EC2 instance
  resource "aws_instance" "ec2" {
    ami           = "ami-0b89f7b3f054b957e"
    instance_type = "t2.micro"

    tags = {
      Name = "EC2 from Terraform"
    }
  }

  # Export `ec2_instance_id` value
  output "ec2_instance_id" {
    value = aws_instance.ec2.id
  }
  ```

<!-- Terraform command lines -->
## Terraform command lines
- `terraform init` initialize directory, pull down providers.
- `terraform validate` check whether your configuration is valid. 
- `terraform plan` do a dry run of your plan to see what it’s actually going to do.
- `terraform apply` deploy / apply or update your configuration to a provider.
- `terraform apply –auto-approve` deploy or apply or update your configuration to a provider without being prompt to enter “**yes**”.
- `terraform destroy` destroy / clean-up your infrastructure.
- `terraform destroy –auto-approve` destroy / clean-up your infrastructure without being prompt to enter “**yes**”.
- `terraform destroy –target=resource_type.resource_name` destroy / delete a specific resource matching the given `resource_type.resource_name`.
- `terraform state list` list out all the resources tracked via the current state file.
- `terraform state list resource_type.resource_name` list all resources in the state file matching the given `resource_type.resource_name`.
- `terraform state show resource_type.resource_name` show the attributes of a single resource in the state file that matches the given `resource_type.resource_name`.

<!-- Files and Directories -->
## Files and directories
- `.terraform` uses to manage cached provider plugins and modules, record. This **directory** is automatically managed by Terraform, and is created during initialization.
- `.terraform.lock.hcl` terraform has created this lock **file** to record the provider selections it made above (e.g: `Installed hashicorp/aws v4.28.0 (signed by HashiCorp)`). Include this file in your version control repository so that Terraform can guarantee to make the same selections by default when you run `terraform init` in the future.
- `terraform.tfstate` **file** - store state of the current infrastructure, must not be changed.  
- `terraform.tfstate.backup` **file** - store state backup (older serial).

<p align="right"><a href="#readme-top">▲</a></p>

<!-- <br/> -->

<!-- Troubleshooting -->
# Troubleshooting
- <b><ins>Issue 1</ins>: `terraform` could not be found</b>
  <p align="center">
    <img src="images/terraform-could-not-be-found.png" alt="terraform-could-not-be-found" width="50%">
  </p>

  + Your `PATH` environment variable was not set up properly.
  + Ensure that your `PATH` variable contains the directory where Terraform was installed.
  + <ins>How to fix</ins>:
    ```sh
    ❯ mv ~/{directory_contain_terraform_package}/terraform /usr/local/bin/
    ```

<br/>

- <b><ins>Issue 2</ins>: no valid credential sources for Terraform AWS Provider found</b>
  <p align="center">
    <img src="images/terraform-no-valid-credential.png" alt="terraform-no-valid-credential" width="80%">
  </p>

  + Your AWS credential (access key & secret access key) was not set up properly.  
  + <ins>How to fix</ins>:
    ```sh
    ❯ aws configure
    AWS Access Key ID [None]: AKIAIOSFODNN7EXAMPLE
    AWS Secret Access Key [None]: wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
    Default region name [None]: ap-southeast-1
    Default output format [None]: json
    ```
  + After configuring, your credential information named _**default**_ will be store in the `~/.aws/credentials` file.
  + For more information, see [Quick configuration with aws configure](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html#cli-configure-quickstart-config).
  + <b><ins>Warning</ins>: please do not hard-coded your credentials like below !!!</b>
    ```hcl
    provider "aws" {
      region     = "ap-southeast-1"
      access_key = "my-access-key" 👈 Do not place your credential right here.
      secret_key = "my-secret-key" 👈 Do not place your credential right here.
    }
    ```
  + For more information, see [Authentication and Configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#authentication-and-configuration).

<p align="right"><a href="#readme-top">▲</a></p>

<!-- <br/> -->

<!-- Exercises -->
# Exercises
Create an Amazon Linux 2 EC2 instance with an Elastic IP address attached and Apache Web Server installed, in a public Subnet of a custom VPC. Follow these steps:
1. Create a VPC.
2. Create an Internet Gateway.
3. Create a custom Route Table.
4. Create a public Subnet.
5. Associate Subnet with Route Table.
6. Create a Security Group that allows port 22 and 80.
7. Create a Network Interface with an IP in the Subnet that was created in step 4.
8. Assign an Elastic IP to the Network Interface created in step 7.
9. Create an Amazon Linux 2 instance and install Apache Web Server.

<!-- FAQ -->
# FAQ

### Question 1: Where do they fit in your infrastructure?
It is imperative to understand where and how these two IaC solutions fit into your infrastructure. Let’s talk about Terraform first.

<img src="images/terraform-deployment-cycle.png" alt="terraform-deployment-cycle" width="100%">

In the diagram above, we can see how Terraform integrates with the standard CI/CD pipeline. Terraform plays a significant role in the Continuous Deployment part of the pipeline, where it is responsible for provisioning instances on Amazon’s ECS cluster. Terraform also quickly spins up to three parallel Dev, UAT, and Prod environments in the above scenario.

The below diagram shows the overall workflow of **how CloudFormation works**.

<img src="images/how-cloudformation-works.png" alt="how-cloudformation-works" width="100%">

<br/>

**CloudFormation involves mainly four steps**:

1. Writing your code. This is the code that is defined as the CloudFormation template.
2. This template can be saved in any code repository. In this scenario, the template is saved in an S3 bucket.
3. AWS CloudFormation is then used via AWS CLI or the browser console to create the stack.
4. The final output of the template is provisioning in the form of infrastructure stacks in the AWS cloud.

<br/>

### Question 2: Advantages and disadvantages of Terraform vs. CloudFormation
<h2 align="center">Terraform</h2>

#### Advantages
- Terraform modules allows us to separate resources in dedicated and re-usable templates.
- You can use specific versions and different branches of the same module, so changing it to add new features is more straightforward, which provides flexibility.
- Terraform has a robust CLI that makes it easier to see the infrastructure’s status through simple commands.
- Terraform supports multi-cloud integration. Users can use Terraform to deploy applications on multiple cloud platforms.
- It simplifies the management and orchestration of multi-tier infrastructure. CloudFormation also has the same advantage when it comes to infra management and orchestration.

#### Disadvantages
- When AWS launches new services, it takes longer to get compliance checks in Terraform.
- The learning curve in Terraform is steeper as compared to CloudFormation.
- Security of “state files” is a concern. The users need to ensure that the state files are handled in the remote backend because they have confidential information.
- In addition to security, state files are a concern because managing the resources is impossible if the terraform state is ever lost; using a backend to store the state files is a best practice.

<br/>

**There are many other advantages to using Terraform. Some of the major ones are**:
- Terraform supports a lot of security and unit testing tools like Terraform Lint, etc.
- Terraform does support conditionals.
- Terraform has workspaces, which makes it easier to manage multiple environments.
- Terraform supports multiple plugins. These plugins help a lot in extending the core functionalities of Terraform.
- The `local_exec` provisioner allows you to run the commands locally. This further extends Terraform’s functionality allowing you to run bash, PowerShell, Python scripts before running `.tf` files.

<br/>
<h2 align="center">CloudFormation</h2>

#### Advantages
- Works best for new AWS services.
- YAML is friendly and easier to use and configure.
- Many tools help in Unit Testing for the CloudFormation templates. It makes it easier to find errors, warnings, and other info in the code.
- It integrates easily with other Infrastructure-as-a-code solutions.
- Cloudformation supports conditionals, which enables the user to decide whether to create a resource or not.

#### Disadvantages
- Nested stacks are not as good as Terraform. It is a bit more challenging to implement and to manage. `CrossStacks` references, the `DependsOn` attribute, or the `GetAtt` function can help manage the outputs of one template as the input to another template.
- There is a size limit of 51MB on the stacks that don’t work in the developers’ favor all the time.
- Modularization of code in CloudFormation is not as mature as Terraform. This is a very new feature that has been introduced by AWS in CloudFormation.

<br/>

### Question 3: What is Terraform used for?
Terraform is a powerful tool for provisioning, maintaining, and having useful versioning on the cloud infrastructure. Terraform can manage existing and popular solutions as well as on-premise applications as well.

<br/>

### Question 4: Why should we use CloudFormation?
CloudFormation supports almost all the services on AWS. It also integrates well with serverless and all the services offered by AWS, e.g., AWS Lambda, etc.

<br/>

### Question 5: Why should I use Terraform?
It is free and easy to use. Terraform’s support spans across multiple cloud providers. Besides, Terraform has many in-built modules, which makes its code reusable and flexible.

<br/>

### Question 6: What is Terraform DevOps?
Terraform has helped a lot in the DevOps space, changing the way infrastructure is provisioned and managed.

<br/>

### Question 7: Can Terraform be used in AWS?
**Yes**, Terraform can be used in AWS with the help of access and secret keys.

<br/>

### Question 8: Is AWS CloudFormation free?
**Yes**, it is. CloudFormation is free. AWS only charges for those services which you provision using CloudFormation.

<br/>

### Question 9: Is Terraform free?
**Yes**, Terraform is also free. The resources you create using Terraform on the cloud are not free. You will have to pay the fee to the cloud service provider for the resources you provision using Terraform. However, Terraform has an Enterprise edition, which comes with a price. It offers better collaboration and governance features.

<p align="right"><a href="#readme-top">▲</a></p>

<!-- <br/> -->

<!-- References -->
# References
- [What is Infrastructure as Code (IaC)?](https://www.crowdstrike.com/cybersecurity-101/infrastructure-as-code-iac/)
- [Terraform Website](https://www.terraform.io)
- [Terraform Documentation](https://www.terraform.io/docs/)
- [HashiCorp's Learn Platform](https://learn.hashicorp.com/terraform)
- [The Terraform Registry](https://registry.terraform.io)
- [Terraform 101](https://www.techtarget.com/searchitoperations/definition/Terraform)
- [Terraform vs. CloudFormation](https://www.clickittech.com/devops/terraform-vs-cloudformation/)
- [Cloudformation vs. Terraform: Which is better?](https://www.cncf.io/blog/2021/04/06/cloudformation-vs-terraform-which-is-better/)
- [The Ultimate Terraform Commands Cheat Sheet](https://acloudguru.com/blog/engineering/the-ultimate-terraform-cheatsheet)
- [Terraform FAQs](https://faun.pub/terraform-tutorials-frequently-asked-questions-4b180a8afa6f)

<p align="right"><a href="#readme-top">▲</a></p>

<!-- Contact -->
# Contact
- <b>Full name</b>: Lý Tường Thụy
- <b>Team</b>: Outsources (Mobile & Fullstack Dept)
- <b>Branch</b>: Ho Chi Minh
- <b>ChatOps</b>: thuylt@runsystem.net
- <b>My Terraform GitHub</b>: https://github.com/rs-thuylt/Terraform101

<p align="right"><a href="#readme-top">▲</a></p>
