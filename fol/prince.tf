/*Access key
	
Secret access key
AKIA5SE2M7HVZCWITTAW
	
TVYVF13/Lg7mvnH6zgIQQ5lmJTqvJcNxBJcZxZEw
*/

provider "aws" {
    region = "ap-south-1"
    access_key = "AKIA5SE2M7HVZCWITTAW"
    secret_key = "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"
}

resource "aws_instance" "prince_instance" {
    ami = ""
    instance_type = "t2.micro"
    tag = {
        Name = "Prince_Instance"
    }
}

output "public_ip" {
    value = aws_instance.prince_instance.public_ip
}