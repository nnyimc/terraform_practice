variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
  default = "us-east-2"
}

variable "AWS_AMI" {
  type = map(string)
  default = {
    "us-east-1" = "ami-0ba62214afa52bec7"
    "us-east-2" = "ami-00399ec92321828f5"
  }
}
