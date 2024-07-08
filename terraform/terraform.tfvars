region       = "eu-west-6"
short_region = "euw6"
account_name = "********"
account_id   = "************"  # to be removed after deployment 

tags = {
  AccountName = "jones"
  Owner       = "jones.osei@jonestecsolutions.com"
  Terraform   = true
  Department  = "IT"
  Project     = "DevOps"
}

vpc_ip_cidr = "10.16.160.0/19"
vpc_subnets_map = {
  "public" = {
    "general" = {
      "10.16.160.0/24" = "public-a"
      "10.16.161.0/24" = "public-b"
    }
  }
  "private" = {
    "general" = {
      "10.16.162.0/23" = "private-a"
      "10.16.164.0/23" = "private-b"
      "10.16.166.0/23" = "private-c"
    }
  }
}
