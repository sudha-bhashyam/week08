# Remote state: lets GitHub Actions (and the local machine) share one Terraform state.
# The storage account below is created once, manually, before the pipeline runs (bootstrap).
terraform {
  backend "azurerm" {
    resource_group_name  = "koalatech-tfstate-rg"
    storage_account_name = "koalatfstate224866033"
    container_name       = "tfstate"
    key                  = "week08.terraform.tfstate"
  }
}