# TechX ALB

## Setup Steps
1. Launch two EC2 t2.micro instances (Amazon Linux 2023)
2. SSH into each and run `setup-server.sh` with the server name
3. Create an ALB with a target group pointing to both instances
4. Health check path: `/`

## Failover Test
Stop one instance and the ALB should automatically route all traffic to the remaining healthy instance.
