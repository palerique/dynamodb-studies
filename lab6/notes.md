---
arn:aws:dynamodb:us-east-1:799098231639:table/sessions arn:aws:dynamodb:us-east-1:799098231639:table/dragon_stats
---
Creating VPC... VPC ID 'vpc-024221ede169ff647' CREATED.

Main Route Table ID is 'rtb-0c6dd492c77b7cb2c'.

Creating Private Subnet...

Subnet ID 'subnet-0f3e3ad8184af34f5' CREATED.

Creating Security Group for Lambda...

Lambda Security Group ID 'sg-093fc32279d29b027' CREATED.

COMPLETED

---

aws lambda update-function-configuration \
--function-name DragonSearch \
--vpc-config SubnetIds=<FMI>,SecurityGroupIds=<FMI>

aws lambda update-function-configuration \
--function-name DragonSearch \
--vpc-config SubnetIds=subnet-0f3e3ad8184af34f5,SecurityGroupIds=sg-093fc32279d29b027
---
aws ec2 create-vpc-endpoint --service-name com.amazonaws.us-east-1.dynamodb \
--vpc-id <VPC ID> --route-table-ids <ROUTE TABLE ID>

aws ec2 create-vpc-endpoint --service-name com.amazonaws.us-east-1.dynamodb \
--vpc-id vpc-024221ede169ff647 --route-table-ids rtb-0c6dd492c77b7cb2c
---
terraforming help | grep terraforming | grep -v help | awk '{print "terraforming", $2, "--profile", "default", ">", $2"
.tf";}' | bash

find . -type f -name '*.tf' | xargs wc -l | grep ' 1 .'
---
---
---
---
---
---
