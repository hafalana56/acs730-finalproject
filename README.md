# acs730-finalproject
two-tier web application

This project demonstrates the use of auto scaling and application load balancer

#The scaling policies that was defined adjust the number of instances, within minimum and maximum number of instances, based on the criteria that was specified in the project.

The application load balancer distributes incoming application traffic across multiple
EC2 instances, in multiple Availability Zones, accross three Availability zones as required in the project.
This increases the availability of the web application.
One or more listeners can be added to the load balancer.
#The project consists of three environments, the staging, dev and prod environment

#Each environment has its own CIDR ranges of VPC and has maximum numbers of instances to be deployed in the public subnets

#Each environment stores tfstate file in different remote s3 buckets ( There are 3 s3 buckets created in total)

#Images displayed on the web from each environment are stored in the remote s3 buckets

#s3 buckets are created with some policies to enable get and put operations from the buckets

#Modules are created for alb, sg, launch templates, Security groups

#The deployment is tested in each environment to show the working principle of the application load balancer

PROJECT DESCRIPTION

The project consists of 3 different environments for safe deployment of two-tier web application with load balancer and auto scaling

The project is cloned from github repo:  git clone git@github.com:hafalana56/acs730-finalproject.git (ssh)
After successful cloning we changed directory as required to check the loading of the applications from different environments

cd acs730-finalproject
cd environments
cd dev
we run terraform init
       terraform validate
       terraform plan
       terraform apply
       
we can switch to the respective environments as required

The three s3 buckets created are dev-hafees-bucket, prod-hafees-bucket and stag-hafees-bucket to store the html files, tfstate files and the images
that were successfully deployed on the ec2 instances.
