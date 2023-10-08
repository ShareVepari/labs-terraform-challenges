provider "aws" {
 //version = "~> 2.54"
 region = "us-west-2"
}

# provider "digitalocean" {}

// Following did not work
/*
provider "digitalocean" {
  alias = "digitalocean"
  source = "digitalocean/digitalocean"
}
*/  //Did not work

terraform {
//  required_version = "~> 1.5"

  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
     // version = "2.30.0"
    }
  }
// Did not work as you cannot have 2 providers
  /*
  required_providers  {
  aws = {
    version = "~> 2"
  }
  */
}


resource "aws_iam_user" "iam_user" {
  name = "labs-test"
}