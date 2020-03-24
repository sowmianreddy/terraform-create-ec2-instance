resource "aws_instance" "CI-demo" {
    ami = var.CENTOS_AMI_ID
    instance_type = "t2.micro"
    subnet_id = var.SUBNETID
    vpc_security_group_ids = [aws_security_group.centos-sg.id]
    key_name = aws_key_pair.centosKeyPair.key_name
    tags = {
        Name = "CI-demo",
        OS = "Centos"
    }


 #provisioner "local-exec" {
  #           command = " sudo yum install git -y"
        
   
#}

#provisioner "local-exec" {
 #command = "sudo yum install -y java-1.8.0-openjdk-devel"
#}

  
}
