terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.15.0"
    }
  }
}


provider "aws" {
  region     = "eu-west-1"
  access_key = data.vault_generic_secret.aws_access.data["access_key"]
  secret_key = data.vault_generic_secret.aws_access.data["secret_key"]
}

provider "vault" {
  address = "https://wmca-2023-cluster-public-vault-656706fa.13a18770.z1.hashicorp.cloud:8200/"
  token   = "hvs.CAESIL9Wy68hpwmnYU6MOsw9ACdRZwe-H6z2bYmpNZHzinj8GicKImh2cy54eGhaclF2ZGhXU3ZGZU53WURGSVQ4aWcuelB4eHUQngI"

}
