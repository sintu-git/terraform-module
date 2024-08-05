#create instance
resource "aws_instance" "webserver"{
   ami = "ami-0aa8fc2422063977a"
   instance_type = "t2.micro"

   tags = {
      Name = "webserver"
   }
}