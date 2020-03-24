resource "aws_security_group" "centos-sg" {

    vpc_id = var.VPCID
    name = "CentosNodeSG"
    description = "Security group for Centos Node"
tags = {
    Name = "CentosNodeSG"
}
}


resource "aws_security_group_rule" "CentosNodeAllowSSH" {
    type = "ingress"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    security_group_id = aws_security_group.centos-sg.id
}



resource "aws_security_group_rule" "CentosOutboundtoAll" {
    type = "egress"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    security_group_id = aws_security_group.centos-sg.id
}

