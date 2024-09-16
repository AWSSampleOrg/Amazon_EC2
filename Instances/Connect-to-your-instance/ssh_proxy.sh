provate_key=~/.ssh/EC2_Key_pair.pem
ssh -o ProxyCommand="ssh -i $provate_key -W %h:%p ec2-user@$1" -i $provate_key ec2-user@$2
