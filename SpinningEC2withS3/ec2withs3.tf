##EC2 info
resource "aws_instance" "xen" {
    ami =   "ami-0dba2cb6798deb6d8"
    instance_type   =   "t2.micro"
    availability_zone   =   "us-east-1a"
    key_name    = "xenkp"
}

##Deploying S3 Bucket
resource "aws_s3_bucket" "bucket1" {
    bucket  =   "xen-bucket-xenstack-us-region"
    acl     =   "private"
    versioning {
        enabled = true
    }
}
