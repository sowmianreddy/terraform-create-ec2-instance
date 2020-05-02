variable "AWS_REGION" {
   default =   "ap-south-1"
}
variable "ACS_AMI_ID" {
   default =   "ami-02e60be79e78fef21"
}

variable "CENTOS_AMI_ID" {
  #
#default =   "ami-02e60be79e78fef21"
default = "ami-021bb9f371690f97a"
}

variable "UBUNTU_AMI_ID" {
   default =   "ami-04125d804acca5692"
}

variable "WINDOWS_AMI_ID" {
   default =   "ami-06a021f17d57d5620"
}

variable "SUBNETID" {
  # default =   "subnet-588a5131"
   default = "subnet-35678f6f"
}

variable "VPCID" {
  # default =   "vpc-2000df49"
   default = "vpc-e14ea387"
}

variable "ACS_PRIV_KEY" {
   default =   "keys/acsLaunchKey"
}

variable "ACS_PUB_KEY" {
   default =   "keys/acsLaunchKey.pub"
}

variable "CENTOS_PRIV_KEY" {
   default =   "keys/centosLaunchKey"
}

variable "CENTOS_PUB_KEY" {
   default =   "keys/centosLaunchKey.pub"
}

variable "UBUNTU_PRIV_KEY" {
   default =   "keys/ubuntuLaunchKey"
}

variable "UBUNTU_PUB_KEY" {
   default =   "keys/ubuntuLaunchKey.pub"
}


variable "WINDOWS_PRIV_KEY" {
   default =   "keys/windowsLaunchKey"
}

variable "WINDOWS_PUB_KEY" {
   default =   "keys/windowsLaunchKey.pub"
}

variable "access_key"
{
  default = ""
}




