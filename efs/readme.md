# EFS MOunting ON EKS
the best way is to follow this workshop: https://www.eksworkshop.com/beginner/190_efs/launching-efs/ as he uses the efs csi driver

## OR follow this but is not recommended 

#### click through AWS console to create EFS
login to AWS console and search for service _EFS_   
click through wizard , use the VPC and all 3 AZs
*specify the security group of your EC2-worker-nodes, to be applied to EFS as well*

#### add amazon-efs-utils
install the package *amazon-efs-utils* on all worker nodes
```
ssh -i <<blueray.pem>> ec2-user@<<ec2-workernode>> "sudo yum install -y amazon-efs-utils"
```


the general steps 
```
1- create the EFS
2- create the sec group
3- access-point
4- EFS provesioner 
5- use the efs in your deployments 
```
