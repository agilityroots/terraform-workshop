# Basic Terraform Examples

## Prerequisites

### Install Terraform
1. Install Terraform (a single file `terraform.exe`) to `C:\terraform`.
1. Place the path `C:\terraform` in your `PATH` environment variable.
1. Open a command prompt.
1. Validate your Terraform install as shown below:

![image](https://user-images.githubusercontent.com/27913105/33642632-c7fc1c28-da60-11e7-9287-f125bb6ac617.png)


### Create AWS Account

1. Create an AWS account and retrieve your AWS Access and Secret Keys.
1. Make sure you have access to EC2 and S3.
1. Create environment variables as follows:

```
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_DEFAULT_REGION
```

## How to run

### `terraform init`

* This downloads the plugins for the providers specified in the `.tf` file.

![terraform-init](https://user-images.githubusercontent.com/27913105/33642770-74679208-da61-11e7-9512-7c84c01dccf7.gif)

### `terraform plan`

This shows you an execution plan without modifying AWS.

![terraform-plan](https://user-images.githubusercontent.com/27913105/33643010-c2349462-da62-11e7-938d-1bd498b8948d.gif)

###   `terraform apply`

This will show you the same execution plan - and ask you for approval to `apply` the plan. Type `yes` to confirm.

![terraform-apply](https://user-images.githubusercontent.com/27913105/33643210-b7155836-da63-11e7-9d1e-8811dc3b1b8b.gif)

:exclamation: *Terraform creates immutable infrastructure.* Try executing `terraform apply` once again; you will see that the infrastructure is unchanged:

```
$ terraform apply
aws_instance.example: Refreshing state... (ID: i-0eb0c5da25894392f)

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.
```

### `terraform destroy`

When you have finished taking a look at the infrastructure you created, run the command
`terraform destroy`.



## References and Further Reading

1. https://www.terraform.io/intro/getting-started/build.html
1. https://www.terraform.io/docs/state/remote.html
