      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification (known after apply)

      + cpu_options (known after apply)

      + ebs_block_device (known after apply)

      + enclave_options (known after apply)

      + ephemeral_block_device (known after apply)

      + instance_market_options (known after apply)

      + maintenance_options (known after apply)

      + metadata_options (known after apply)

      + network_interface (known after apply)

      + private_dns_name_options (known after apply)

      + root_block_device (known after apply)
    }

  # aws_s3_bucket.public will be created
  + resource "aws_s3_bucket" "public" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = "rishi_s3"
      + bucket_domain_name          = (known after apply)
      + bucket_prefix               = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + policy                      = (known after apply)
      + region                      = (known after apply)
      + request_payer               = (known after apply)
      + tags_all                    = (known after apply)
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)

      + cors_rule (known after apply)

      + grant (known after apply)

      + lifecycle_rule (known after apply)

      + logging (known after apply)

      + object_lock_configuration (known after apply)

      + replication_configuration (known after apply)

      + server_side_encryption_configuration (known after apply)

      + versioning (known after apply)

      + website (known after apply)
    }

  # aws_subnet.main will be created
  + resource "aws_subnet" "main" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "Main"
        }
      + tags_all                                       = {
          + "Name" = "Main"
        }
      + vpc_id                                         = (known after apply)
    }

  # aws_vpc.main will be created
  + resource "aws_vpc" "main" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.0.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_dns_hostnames                 = (known after apply)
      + enable_dns_support                   = true
      + enable_network_address_usage_metrics = (known after apply)
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Name" = "main"
        }
      + tags_all                             = {
          + "Name" = "main"
        }
    }

Plan: 5 to add, 0 to change, 0 to destroy.

─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
rishithayeruva@Rishithas-MacBook-Pro terraform % terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_iam_user.one will be created
  + resource "aws_iam_user" "one" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "dev_user1"
      + path          = "/"
      + tags_all      = (known after apply)
      + unique_id     = (known after apply)
    }

  # aws_instance.rishi will be created
  + resource "aws_instance" "rishi" {
      + ami                                  = "ami-06d64e8645ed82fd0"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_lifecycle                   = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.nano"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + spot_instance_request_id             = (known after apply)
      + subnet_id                            = (known after apply)
      + tags_all                             = (known after apply)
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification (known after apply)

      + cpu_options (known after apply)

      + ebs_block_device (known after apply)

      + enclave_options (known after apply)

      + ephemeral_block_device (known after apply)

      + instance_market_options (known after apply)

      + maintenance_options (known after apply)

      + metadata_options (known after apply)

      + network_interface (known after apply)

      + private_dns_name_options (known after apply)

      + root_block_device (known after apply)
    }

  # aws_s3_bucket.public will be created
  + resource "aws_s3_bucket" "public" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = "rishi_s3"
      + bucket_domain_name          = (known after apply)
      + bucket_prefix               = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + policy                      = (known after apply)
      + region                      = (known after apply)
      + request_payer               = (known after apply)
      + tags_all                    = (known after apply)
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)

      + cors_rule (known after apply)

      + grant (known after apply)

      + lifecycle_rule (known after apply)

      + logging (known after apply)

      + object_lock_configuration (known after apply)

      + replication_configuration (known after apply)

      + server_side_encryption_configuration (known after apply)

      + versioning (known after apply)

      + website (known after apply)
    }

  # aws_subnet.main will be created
  + resource "aws_subnet" "main" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "Main"
        }
      + tags_all                                       = {
          + "Name" = "Main"
        }
      + vpc_id                                         = (known after apply)
    }

  # aws_vpc.main will be created
  + resource "aws_vpc" "main" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.0.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_dns_hostnames                 = (known after apply)
      + enable_dns_support                   = true
      + enable_network_address_usage_metrics = (known after apply)
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Name" = "main"
        }
      + tags_all                             = {
          + "Name" = "main"
        }
    }

Plan: 5 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_iam_user.one: Creating...
aws_vpc.main: Creating...
aws_s3_bucket.public: Creating...
aws_iam_user.one: Creation complete after 2s [id=dev_user1]
aws_vpc.main: Creation complete after 2s [id=vpc-0614c421c2ea629fe]
aws_subnet.main: Creating...
aws_subnet.main: Creation complete after 0s [id=subnet-06fb50d91b69732ba]
aws_instance.rishi: Creating...
╷
│ Error: creating EC2 Instance: operation error EC2: RunInstances, https response error StatusCode: 400, RequestID: 88d96f72-1a54-48b7-a585-bc271f770800, api error Unsupported: Your requested instance type (t2.nano) is not supported in your requested Availability Zone (ap-south-1c). Please retry your request by not specifying an Availability Zone or choosing ap-south-1a, ap-south-1b.
│ 
│   with aws_instance.rishi,
│   on ec2.tf line 1, in resource "aws_instance" "rishi":
│    1: resource "aws_instance" "rishi" {
│ 
╵
╷
│ Error: validating S3 Bucket (rishi_s3) name: only lowercase alphanumeric characters and hyphens allowed in "rishi_s3"
│ 
│   with aws_s3_bucket.public,
│   on s3 bucket.tf line 1, in resource "aws_s3_bucket" "public":
│    1: resource "aws_s3_bucket" "public"{
│ 
╵
rishithayeruva@Rishithas-MacBook-Pro terraform % terraform apply
aws_iam_user.one: Refreshing state... [id=dev_user1]
aws_vpc.main: Refreshing state... [id=vpc-0614c421c2ea629fe]
aws_subnet.main: Refreshing state... [id=subnet-06fb50d91b69732ba]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.rishi will be created
  + resource "aws_instance" "rishi" {
      + ami                                  = "ami-06d64e8645ed82fd0"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_lifecycle                   = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.micro"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + spot_instance_request_id             = (known after apply)
      + subnet_id                            = "subnet-06fb50d91b69732ba"
      + tags_all                             = (known after apply)
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification (known after apply)

      + cpu_options (known after apply)

      + ebs_block_device (known after apply)

      + enclave_options (known after apply)

      + ephemeral_block_device (known after apply)

      + instance_market_options (known after apply)

      + maintenance_options (known after apply)

      + metadata_options (known after apply)

      + network_interface (known after apply)

      + private_dns_name_options (known after apply)

      + root_block_device (known after apply)
    }

  # aws_s3_bucket.public will be created
  + resource "aws_s3_bucket" "public" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = "rishi-s3"
      + bucket_domain_name          = (known after apply)
      + bucket_prefix               = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + policy                      = (known after apply)
      + region                      = (known after apply)
      + request_payer               = (known after apply)
      + tags_all                    = (known after apply)
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)

      + cors_rule (known after apply)

      + grant (known after apply)

      + lifecycle_rule (known after apply)

      + logging (known after apply)

      + object_lock_configuration (known after apply)

      + replication_configuration (known after apply)

      + server_side_encryption_configuration (known after apply)

      + versioning (known after apply)

      + website (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_s3_bucket.public: Creating...
aws_instance.rishi: Creating...
╷
│ Error: creating EC2 Instance: operation error EC2: RunInstances, https response error StatusCode: 400, RequestID: 4260fd7c-4978-4e21-9cf0-2365d263dcb7, api error Unsupported: Your requested instance type (t2.micro) is not supported in your requested Availability Zone (ap-south-1c). Please retry your request by not specifying an Availability Zone or choosing ap-south-1a, ap-south-1b.
│ 
│   with aws_instance.rishi,
│   on ec2.tf line 1, in resource "aws_instance" "rishi":
│    1: resource "aws_instance" "rishi" {
│ 
╵
╷
│ Error: creating S3 Bucket (rishi-s3): operation error S3: CreateBucket, https response error StatusCode: 409, RequestID: AT8QEZG9AFC42Q84, HostID: upoI/cd71MyF8nvdLhDH4bESQCqMfrLE/rBVy3UKAMtGlrsatnEPIo+z1rPeX0KA+iYIL/YdK9Q=, BucketAlreadyExists: 
│ 
│   with aws_s3_bucket.public,
│   on s3 bucket.tf line 1, in resource "aws_s3_bucket" "public":
│    1: resource "aws_s3_bucket" "public"{
│ 
╵
rishithayeruva@Rishithas-MacBook-Pro terraform % terraform apply
aws_iam_user.one: Refreshing state... [id=dev_user1]
aws_vpc.main: Refreshing state... [id=vpc-0614c421c2ea629fe]
aws_subnet.main: Refreshing state... [id=subnet-06fb50d91b69732ba]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.rishi will be created
  + resource "aws_instance" "rishi" {
      + ami                                  = "ami-06d64e8645ed82fd0"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_lifecycle                   = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.large"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + spot_instance_request_id             = (known after apply)
      + subnet_id                            = "subnet-06fb50d91b69732ba"
      + tags_all                             = (known after apply)
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification (known after apply)

      + cpu_options (known after apply)

      + ebs_block_device (known after apply)

      + enclave_options (known after apply)

      + ephemeral_block_device (known after apply)

      + instance_market_options (known after apply)

      + maintenance_options (known after apply)

      + metadata_options (known after apply)

      + network_interface (known after apply)

      + private_dns_name_options (known after apply)

      + root_block_device (known after apply)
    }

  # aws_s3_bucket.public will be created
  + resource "aws_s3_bucket" "public" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = "rishi-s3123"
      + bucket_domain_name          = (known after apply)
      + bucket_prefix               = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + policy                      = (known after apply)
      + region                      = (known after apply)
      + request_payer               = (known after apply)
      + tags_all                    = (known after apply)
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)

      + cors_rule (known after apply)

      + grant (known after apply)

      + lifecycle_rule (known after apply)

      + logging (known after apply)

      + object_lock_configuration (known after apply)

      + replication_configuration (known after apply)

      + server_side_encryption_configuration (known after apply)

      + versioning (known after apply)

      + website (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_s3_bucket.public: Creating...
aws_instance.rishi: Creating...
aws_s3_bucket.public: Creation complete after 2s [id=rishi-s3123]
╷
│ Error: creating EC2 Instance: operation error EC2: RunInstances, https response error StatusCode: 400, RequestID: debfe91b-6a24-4722-b113-29513e79d30d, api error Unsupported: Your requested instance type (t2.large) is not supported in your requested Availability Zone (ap-south-1c). Please retry your request by not specifying an Availability Zone or choosing ap-south-1a, ap-south-1b.
│ 
│   with aws_instance.rishi,
│   on ec2.tf line 1, in resource "aws_instance" "rishi":
│    1: resource "aws_instance" "rishi" {
│ 
╵
rishithayeruva@Rishithas-MacBook-Pro terraform % terraform plan 
aws_iam_user.one: Refreshing state... [id=dev_user1]
aws_vpc.main: Refreshing state... [id=vpc-0614c421c2ea629fe]
aws_s3_bucket.public: Refreshing state... [id=rishi-s3123]

Planning failed. Terraform encountered an error while generating this plan.

╷
│ Error: reading IAM User (dev_user1): operation error IAM: GetUser, https response error StatusCode: 403, RequestID: 5dab0f5f-e388-4621-92df-08ae77794585, api error AccessDenied: User: arn:aws:iam::637423272660:user/admin-terraform is not authorized to perform: iam:GetUser on resource: user dev_user1 because no identity-based policy allows the iam:GetUser action
│ 
│   with aws_iam_user.one,
│   on IAM-User.tf line 1, in resource "aws_iam_user" "one":
│    1: resource "aws_iam_user" "one"{
│ 
╵
╷
│ Error: reading S3 Bucket (rishi-s3123): operation error S3: HeadBucket, https response error StatusCode: 403, RequestID: QCS597NJ1456KSR6, HostID: 52i04loxb5Tt22Y8kEZLBF4+nCa4C4GRiv0LMAEecF8EAezD6/900EFaDbVxQwGZFkc+5tR6W48=, api error Forbidden: Forbidden
│ 
│   with aws_s3_bucket.public,
│   on s3 bucket.tf line 1, in resource "aws_s3_bucket" "public":
│    1: resource "aws_s3_bucket" "public"{
│ 
╵
╷
│ Error: reading EC2 VPC (vpc-0614c421c2ea629fe): operation error EC2: DescribeVpcs, https response error StatusCode: 403, RequestID: 1ce9ab76-39fa-4b6d-8467-720ee3a6e8fc, api error UnauthorizedOperation: You are not authorized to perform this operation. User: arn:aws:iam::637423272660:user/admin-terraform is not authorized to perform: ec2:DescribeVpcs because no identity-based policy allows the ec2:DescribeVpcs action
│ 
│   with aws_vpc.main,
│   on vpc.tf line 1, in resource "aws_vpc" "main":
│    1: resource "aws_vpc" "main" {
│ 
╵
rishithayeruva@Rishithas-MacBook-Pro terraform % terraform plan 
aws_iam_user.one: Refreshing state... [id=dev_user1]
aws_vpc.main: Refreshing state... [id=vpc-0614c421c2ea629fe]
aws_s3_bucket.public: Refreshing state... [id=rishi-s3123]
aws_subnet.main: Refreshing state... [id=subnet-06fb50d91b69732ba]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.rishi will be created
  + resource "aws_instance" "rishi" {
      + ami                                  = "ami-06d64e8645ed82fd0"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_lifecycle                   = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.large"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + spot_instance_request_id             = (known after apply)
      + subnet_id                            = "subnet-06fb50d91b69732ba"
      + tags_all                             = (known after apply)
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification (known after apply)

      + cpu_options (known after apply)

      + ebs_block_device (known after apply)

      + enclave_options (known after apply)

      + ephemeral_block_device (known after apply)

      + instance_market_options (known after apply)

      + maintenance_options (known after apply)

      + metadata_options (known after apply)

      + network_interface (known after apply)

      + private_dns_name_options (known after apply)

      + root_block_device (known after apply)
    }

  # aws_internet_gateway.gw will be created
  + resource "aws_internet_gateway" "gw" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Name" = "main"
        }
      + tags_all = {
          + "Name" = "main"
        }
      + vpc_id   = "vpc-0614c421c2ea629fe"
    }

Plan: 2 to add, 0 to change, 0 to destroy.

─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
rishithayeruva@Rishithas-MacBook-Pro terraform % terraform apply
aws_iam_user.one: Refreshing state... [id=dev_user1]
aws_vpc.main: Refreshing state... [id=vpc-0614c421c2ea629fe]
aws_s3_bucket.public: Refreshing state... [id=rishi-s3123]
aws_subnet.main: Refreshing state... [id=subnet-06fb50d91b69732ba]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.rishi will be created
  + resource "aws_instance" "rishi" {
      + ami                                  = "ami-06d64e8645ed82fd0"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_lifecycle                   = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.large"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + spot_instance_request_id             = (known after apply)
      + subnet_id                            = "subnet-06fb50d91b69732ba"
      + tags_all                             = (known after apply)
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification (known after apply)

      + cpu_options (known after apply)

      + ebs_block_device (known after apply)

      + enclave_options (known after apply)

      + ephemeral_block_device (known after apply)

      + instance_market_options (known after apply)

      + maintenance_options (known after apply)

      + metadata_options (known after apply)

      + network_interface (known after apply)

      + private_dns_name_options (known after apply)

      + root_block_device (known after apply)
    }

  # aws_internet_gateway.gw will be created
  + resource "aws_internet_gateway" "gw" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Name" = "main"
        }
      + tags_all = {
          + "Name" = "main"
        }
      + vpc_id   = "vpc-0614c421c2ea629fe"
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_internet_gateway.gw: Creating...
aws_instance.rishi: Creating...
aws_internet_gateway.gw: Creation complete after 0s [id=igw-0feaa581ec3d208f9]
╷
│ Error: creating EC2 Instance: operation error EC2: RunInstances, https response error StatusCode: 400, RequestID: 1e663367-4e0e-4aab-b504-395f4d5839be, api error Unsupported: Your requested instance type (t2.large) is not supported in your requested Availability Zone (ap-south-1c). Please retry your request by not specifying an Availability Zone or choosing ap-south-1a, ap-south-1b.
│ 
│   with aws_instance.rishi,
│   on ec2.tf line 1, in resource "aws_instance" "rishi":
│    1: resource "aws_instance" "rishi" {
│ 
╵
rishithayeruva@Rishithas-MacBook-Pro terraform % terraform plan
╷
│ Error: Reference to undeclared resource
│ 
│   on rt.tf line 2, in resource "aws_route_table" "rt1":
│    2:   vpc_id = aws_vpc.example.id
│ 
│ A managed resource "aws_vpc" "example" has not been declared in the root module.
╵
╷
│ Error: Reference to undeclared resource
│ 
│   on rt.tf line 6, in resource "aws_route_table" "rt1":
│    6:     gateway_id = aws_internet_gateway.GW.id
│ 
│ A managed resource "aws_internet_gateway" "GW" has not been declared in the root module.
╵
rishithayeruva@Rishithas-MacBook-Pro terraform % pwd
/Users/rishithayeruva/work/terraform
rishithayeruva@Rishithas-MacBook-Pro terraform % ls
IAM-User.tf                     igw.tf                          terraform.tfstate               tf.plan
aws.tf                          rt.tf                           terraform.tfstate.backup        variables.tf
ec2.tf                          s3 bucket.tf                    terraform.tfstate.backup123     vpc.tf
rishithayeruva@Rishithas-MacBook-Pro terraform % ls
IAM-User.tf                     igw.tf                          terraform.tfstate               tf.plan
aws.tf                          rt.tf                           terraform.tfstate.backup        variables.tf
ec2.tf                          s3 bucket.tf                    terraform.tfstate.backup123     vpc.tf
rishithayeruva@Rishithas-MacBook-Pro terraform % terraform plan
aws_iam_user.one: Refreshing state... [id=dev_user1]
aws_vpc.main: Refreshing state... [id=vpc-0614c421c2ea629fe]
aws_s3_bucket.public: Refreshing state... [id=rishi-s3123]
aws_internet_gateway.gw: Refreshing state... [id=igw-0feaa581ec3d208f9]
aws_subnet.main: Refreshing state... [id=subnet-06fb50d91b69732ba]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create
  ~ update in-place

Terraform will perform the following actions:

  # aws_instance.rishi will be created
  + resource "aws_instance" "rishi" {
      + ami                                  = "ami-06d64e8645ed82fd0"
      + arn                                  = (known after apply)
      + associate_public_ip_address          = (known after apply)
      + availability_zone                    = (known after apply)
      + cpu_core_count                       = (known after apply)
      + cpu_threads_per_core                 = (known after apply)
      + disable_api_stop                     = (known after apply)
      + disable_api_termination              = (known after apply)
      + ebs_optimized                        = (known after apply)
      + get_password_data                    = false
      + host_id                              = (known after apply)
      + host_resource_group_arn              = (known after apply)
      + iam_instance_profile                 = (known after apply)
      + id                                   = (known after apply)
      + instance_initiated_shutdown_behavior = (known after apply)
      + instance_lifecycle                   = (known after apply)
      + instance_state                       = (known after apply)
      + instance_type                        = "t2.large"
      + ipv6_address_count                   = (known after apply)
      + ipv6_addresses                       = (known after apply)
      + key_name                             = (known after apply)
      + monitoring                           = (known after apply)
      + outpost_arn                          = (known after apply)
      + password_data                        = (known after apply)
      + placement_group                      = (known after apply)
      + placement_partition_number           = (known after apply)
      + primary_network_interface_id         = (known after apply)
      + private_dns                          = (known after apply)
      + private_ip                           = (known after apply)
      + public_dns                           = (known after apply)
      + public_ip                            = (known after apply)
      + secondary_private_ips                = (known after apply)
      + security_groups                      = (known after apply)
      + source_dest_check                    = true
      + spot_instance_request_id             = (known after apply)
      + subnet_id                            = "subnet-06fb50d91b69732ba"
      + tags_all                             = (known after apply)
      + tenancy                              = (known after apply)
      + user_data                            = (known after apply)
      + user_data_base64                     = (known after apply)
      + user_data_replace_on_change          = false
      + vpc_security_group_ids               = (known after apply)

      + capacity_reservation_specification (known after apply)

      + cpu_options (known after apply)

      + ebs_block_device (known after apply)

      + enclave_options (known after apply)

      + ephemeral_block_device (known after apply)

      + instance_market_options (known after apply)

      + maintenance_options (known after apply)

      + metadata_options (known after apply)

      + network_interface (known after apply)

      + private_dns_name_options (known after apply)

      + root_block_device (known after apply)
    }

  # aws_route_table.rt1 will be created
  + resource "aws_route_table" "rt1" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = [
          + {
              + cidr_block                 = "0.0.0.0/0"
              + gateway_id                 = "igw-0feaa581ec3d208f9"
                # (11 unchanged attributes hidden)
            },
        ]
      + tags             = {
          + "Name" = "example"
        }
      + tags_all         = {
          + "Name" = "example"
        }
      + vpc_id           = "vpc-0614c421c2ea629fe"
    }

  # aws_route_table_association.a will be created
  + resource "aws_route_table_association" "a" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = "subnet-06fb50d91b69732ba"
    }

  # aws_subnet.main will be updated in-place
  ~ resource "aws_subnet" "main" {
        id                                             = "subnet-06fb50d91b69732ba"
      ~ map_public_ip_on_launch                        = false -> true
        tags                                           = {
            "Name" = "Main"
        }
        # (19 unchanged attributes hidden)
    }

Plan: 3 to add, 1 to change, 0 to destroy.

─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
rishithayeruva@Rishithas-MacBook-Pro terraform % 