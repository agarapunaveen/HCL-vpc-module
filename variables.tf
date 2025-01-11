#### Project ####
variable "project_name"{
    type = string
    default= "dbs-training"
}

variable "environment"{
    type = string
    default = "dev"
}

variable "common_tags"{
    type = map
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
    } 
}

#### VPC ####
variable "vpc_cidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
    type = bool
    default = true
}

variable "vpc_tags" {
    type = map
    default = {}
}

#### IGW ####
variable "igw_tags"{
    type = map
    default = {}
}

### Public Subnet ####
variable "public_subnet_cidrs" {
    type = list
    default = ["10.0.1.0/24","10.0.2.0/24"]
    validation {
        condition = length(var.public_subnet_cidrs) == 2
        error_message = "Please provide 2 valid public subnet CIDR"
    }
}

variable "public_subnet_cidr_tags" {
    type = map
    default = {}
}


### Private Subnet ####
variable "private_subnet_cidrs" {
    type = list
    default = ["10.0.11.0/24","10.0.12.0/24"]
    validation {
        condition = length(var.private_subnet_cidrs) == 2
        error_message = "Please provide 2 valid private subnet CIDR"
    }
}

variable "private_subnet_cidr_tags" {
    type = map
    default = {}
}


### Database Subnet ####
variable "database_subnet_cidrs" {
    type = list
    default = ["10.0.21.0/24","10.0.22.0/24"]
    validation {
        condition = length(var.database_subnet_cidrs) == 2
        error_message = "Please provide 2 valid database subnet CIDR"
    }
}

variable "database_subnet_cidr_tags" {
    type = map
    default = {}
}

variable "database_subnet_group_tags" {
    type = map
    default = {}
}

#### Nat gateway ####
variable "nat_gateway_tags" {
    type = map
    default = {}
}

#### Public Route table ####
variable "public_route_table_tags" {
    type = map
    default = {}
}

#### Private Route table ####
variable "private_route_table_tags" {
    type = map
    default = {}
}

#### Database Route table ####
variable "database_route_table_tags" {
    type = map
    default = {}
}

