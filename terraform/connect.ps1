cd "C:\Users\MUSKAN\Desktop\ai-cloud-security-scanner\terraform"
$myip = (Invoke-RestMethod -Uri 'https://api.ipify.org')
terraform apply -var="my_ip=$myip" -auto-approve
$ec2ip = terraform output -raw instance_public_ip
ssh -i "C:\Users\MUSKAN\Downloads\ai-secops-key.pem" ec2-user@$ec2ip