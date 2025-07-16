variable "ec2_ami" {
  type        = string
  description = "The id of the AMI to use for the instance"
  default     = "ami-020cba7c55df1f615"

}

variable "instance_type" {
  type        = string
  description = "the instance type to launch"
  default     = "t2.micro"

}

variable "key_name" {
  type        = string
  description = "The key pair to use for the instance"
  default     = "keypairlinux"


}