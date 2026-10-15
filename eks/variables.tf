# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}

variable "environment" {
  description = "Deployment Environment"
  type = string
  # Want to default with Dev and overwrite with prod
  # so no accidental pushes to production -MAX
  default = "dev"
}

variable "project_name" {
  type = string
  default = "celonis-rds"
}

variable "db_username" {
  default = "admin"
}

variable "db_password" {
  default = "passwordSuperSecret"
}