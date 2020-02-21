 $ aws ec2 run-instances
 --image-id ami-xxxxxxxx
 --count 1
 --instance-type x1.32xlarge
 --region us-west-2
 --key-name=my_key
 --security-group-ids sg-xxxxxxxx
 --subnet-id subnet-xxxxxxxx
 --placement GroupName=My-PlacementGroup,Tenancy=default,HostId=My-DedicatedHostId
 --block-device-mappings file:///tmp/ebs_hana.json
 --tag-specifications 'ResourceType=instance,Tags=[{Key=name,Value=…}]'
 'ResourceType=volume,Tags=[{Key=Name,Value=…}]'
