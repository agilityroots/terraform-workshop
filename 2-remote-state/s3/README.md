# Terraform with State Storage in S3

## A Note about States

After you ran the `terraform apply` command you might have noticed a `terraform.tfstate` file in the same directory.

* Terraform stores the state in a file `terraform.tfstate`.
* The state here means info such as the IDs of created AWS instances.
* This file is *critical* and must not be deleted.
* If you wish to share the infrastructure and the Terraform code, this file needs to be shared as well.

However, this creates a problem: you cannot version-control the file easily since it keeps changing. An example:

Your colleague might change the resource from his machine, changing the `.tfstate` file and commit it to version control. This might create a merge conflict if you have also changed the file locally. This is the basis for remote state storage.

## Prerequisites

* Go to the AWS Console.
* Create an S3 bucket as described in file [aws.tf](aws.tf).

```
terraform {
  backend "s3" {
    bucket = "NAME_OF_BUCKET"
    region = "NAME_OF_REGION"
  }
}
```



## How to run

```
terraform init
terraform plan
terraform apply
```

## References and Further Reading

1. [Creating S3 Buckets from AWS S3 Console](http://docs.aws.amazon.com/AmazonS3/latest/user-guide/create-bucket.html)
