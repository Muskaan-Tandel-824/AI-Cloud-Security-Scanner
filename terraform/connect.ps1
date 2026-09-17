cd "C:\Users\MUSKAN\Desktop\ai-cloud-security-scanner\terraform"
$myip = (Invoke-RestMethod -Uri 'https://api.ipify.org')
terraform apply -var="my_ip=$myip" -auto-approve
ssh -i "C:\Users\MUSKAN\Downloads\ai-secops-key.pem" ec2-user@13.127.165.75