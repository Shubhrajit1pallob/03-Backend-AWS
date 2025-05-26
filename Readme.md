# Terraform Backend Example

## Overview

This project demonstrates how to configure a remote backend for Terraform using an Amazon S3 bucket. By using a remote backend, Terraform state files are stored securely in S3, enabling collaboration and ensuring consistency across multiple users or environments.

## Features

- Configuration of an S3 bucket as the Terraform backend.
- Use of a specific key to store the state file in the S3 bucket.
- Support for versioning and locking to prevent state corruption.
- Integration with the AWS provider for resource management.

## Prerequisites

- Terraform installed on your local machine (version 1.0.0 or later).
- AWS CLI configured with appropriate credentials and permissions.
- An S3 bucket created in your AWS account to store the Terraform state file.

## Backend Configuration

The backend is configured in the `provider.tf` file as follows:

```terraform
backend "s3" {
  bucket = "03-backend-bucket-shubhrajit"
  key    = "04-backends/state.tfstate"
  region = "us-east-1"
}
```

## Explanation

- bucket: The name of the S3 bucket where the state file will be stored.
- key: The path within the bucket to store the state file.
- region: The AWS region where the S3 bucket is located.

## Usage

1. Clone this repository to your local machine:

    ```bash
    git clone https://github.com/your-username/your-repository.git
    cd 04-Backend
    ```

2. Initialize Terraform to configure the backend:

    ```bash
    terraform init
    ```

3. Review the execution plan:

    ```bash
        terraform plan
    ```

4. Apply the configuration to create resources:

    ```bash
    terraform apply
    ```

5. When you're done, destroy the resources to avoid unnecessary costs:

    ```bash
    terraform destroy
    ```

## Notes

Ensure that the S3 bucket specified in the backend configuration exists before running terraform init.
Use proper IAM permissions to allow Terraform to read and write to the S3 bucket.
Always review the execution plan before applying changes to avoid unintended modifications.

## Project Structure

- provider.tf: Configures the AWS provider and the S3 backend for Terraform.
- main.tf: Contains the main Terraform configuration (if applicable).

## License

This project is licensed under the MIT License. See the LICENSE file for details.
