# Define AWS Provider
provider "aws" {
  region = "us-east-1"  # Change to your preferred region
}

# Create an EC2 instance
resource "aws_instance" "app_server" {
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI (Change as needed)
  instance_type = "t2.micro"               # Free-tier eligible instance

  tags = {
    Name = "MyAppServer"
  }
}
