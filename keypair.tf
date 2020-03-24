resource "aws_key_pair" "centosKeyPair" {
    key_name = "centosKeyPair"
    public_key = file(var.CENTOS_PUB_KEY)

}
