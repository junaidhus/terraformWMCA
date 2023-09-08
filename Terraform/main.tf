terraform {
  cloud {
    organization = "wmca_v1jh"

    workspaces {
      name = "jhworkspace"
    }
  }
}