resource "aws_instance" "xeninstance" {
    ami = "ami-0dba2cb6798deb6d8"
    instance_type   = "t2.micro"
    count       = 2
}