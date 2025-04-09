terraform {
  required_providers {
    slack = {
      source = "pablovarela/slack"
      version = "1.2.2"
    }
  }
}


provider "slack" {
  token = var.slack_token
}

locals {
  users = {
    for user in var.users : user.email => {
      email        = user.email
    }
  }
}

resource "slack_user" "user" {
  for_each = local.users

  email        = each.value.email
}