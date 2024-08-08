module "mywebserver" {
    source = "./module/webserver"  
    ami = "ami-0aa8fc2422063977a"
    instance_type = "t2.medium"
} 

output publicIP {
    value = module.mywebserver.publicIP
}

output "vpc_id" {
    value = module.mywebserver.vpc_id
}