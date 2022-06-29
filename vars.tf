variable "AWS_REGION" {    
    default = "eu-west-1"
}
variable "AMI" {
    type = map(string)
    default = {
    eu-west-1 = "ami-0d75513e7706cf2d9"
    us-west-2 = "ami-0d75513e7706cf2d9"     
    }
}
variable "EC2_USER" {
  default = "ubuntu"
}

variable "EKS_ROLE_ARN" {
  default = "arn:aws:iam::319974391653:role/eksClusterRole"
}

variable "PUBLIC_KEY_PATH" {
  default = "dublin-region-key-pair.pub"
}

variable "PRIVATE_KEY_PATH" {
  default = "dublin-region-key-pair.pub"
}

variable "SSH_WHITELIST" {
  default = "193.120.236.35/32" # Accessable from my VPN
}

variable "AWS_PROFILE" {
default = "adamennisbackup"
}
