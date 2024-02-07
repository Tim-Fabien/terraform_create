## Creating a Remote GitHub Repository with Terraform

This guide demonstrates how to create a new GitHub repository using Terraform, an infrastructure as code tool that allows for the safe and efficient management of cloud and on-premises resources.

### Prerequisites

- Terraform installed
- GitHub account
- Basic understanding of Terraform syntax and GitHub operations

### Steps

1. **Generate a GitHub Personal Access Token (PAT):**
   - Navigate to GitHub Settings -> Developer settings -> Personal access tokens.
   - Click "Generate new token", provide necessary permissions (e.g., repo), and copy the generated token.

2. **Write Terraform Configuration:**
   - Create a Terraform file (e.g., `main.tf`) to define the GitHub provider and repository resource.

3. **Initialize Terraform:**
   - Run `terraform init` to initialize the working directory and download the required provider plugins.

4. **Plan the Terraform Execution:**
   - Execute `terraform plan` to preview the actions Terraform will perform.

5. **Apply the Terraform Configuration:**
   - Run `terraform apply` to create the GitHub repository as defined in your Terraform configuration. Confirm the action by typing `yes`.

### Example Terraform Configuration

```hcl
provider "github" {
  token = "YOUR_GITHUB_PERSONAL_ACCESS_TOKEN"
}

resource "github_repository" "example" {
  name        = "terraform-repo-example"
  description = "Created with Terraform"
  visibility  = "public"
}

Replace YOUR_GITHUB_PERSONAL_ACCESS_TOKEN with the token generated in step 1.

## Relevant Commands
- terraform init initializes Terraform.
- terraform plan previews changes.
- terraform apply applies changes.

## Resources
- Terraform Documentation
- GitHub Terraform Provider
- Generating a GitHub Personal Access Token

# Conclusion
By following these steps and utilizing the example configuration, you can automate the creation of GitHub repositories with Terraform, streamlining your workflow and ensuring a consistent setup across projects.