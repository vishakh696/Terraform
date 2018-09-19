aws_profile = "default"
aws_region = "us-east-1"
vpc_cidr  = "10.0.0.0/16"
cidrs	= {
  public1  = "10.0.1.0/24"
  public2  = "10.0.2.0/24"
  private1 = "10.0.3.0/24"
  private2 = "10.0.4.0/24"
}
domain_name = "pocbucket"
dev_instance_type = "t2.micro"
dev_ami	= "ami-97785bed"
public_key_path	= "/home/ec2-user/.ssh/id_rsa.pub"
key_name = "terraformpoc"
