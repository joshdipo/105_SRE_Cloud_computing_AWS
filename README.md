# SRE Intro
## User Journey
### User Experience
#### Cloud computing
#### AWS Services

---

- Creating github repo to push the markdown doc
- Amazon Web Services (AWS)

---

## Task

#### What is the role of SRE?
- Making sure whatever is bein deployed won't crash or cause any other problems
- If something does crash or if there are other problems then their role is to figure out what the problem is as quick as possible
- Asuring continuous operation

#### Benifits of cloud computing
- Ease of use
  - No need to set up own datacentre
  - Quick to deploy
- Flexibility
  - Easily scalable
  - Only use services you need
- Robustness
  - Deploying accross multiple AZs for redundecy
  - Scaling on demand
- Costs
  - Only pay for the resources that you use
  - Less up-front costs


#### AWS?
- Amazon Web Services
- On demand cloud computing


#### AWS global infrastructure
Consists of:
- 84 AZs
- Across 26 Regions

![image](https://user-images.githubusercontent.com/81766525/159288904-ea568a76-e98b-4db8-83db-c8e591911e39.png)


#### Regions VS Availability zones
- Regions are usually Countries or sections of a continent
  - They are collections of AZs
- Availability Zones (AZs) is a deployment area within a region


#### What are the four pillars of cloud computing
- Ease of use
- Flexibility
- Robustness
- Cost effective


#### What is a CDN?
- Content delivery network
- Caching content in a server closer to where people are trying to access it to allow for faster access


#### On Prem VS Hybrid - On Prem VS Public Cloud
- On Prem
  - Developing all the infrastructure you'll need yourself
- Hybrid
  - Owning some infrasructure for more sensitive data
  - Using cloud computing along side On Prem
  
- Public cloud
  - Using a service like AWS and using their pre-existing infrastructure to deploy

---

### Public Cloud
- Secure it
- Security groups
- AWS file.pem
SSH command provided to us by AWS

![image](https://user-images.githubusercontent.com/81766525/159467049-14f7fb23-4206-490f-ad48-56def2c2019c.png)

Laptop/desktop
- Motherboard
- CPU
- GPU
- Harddrive
- Ram
- Audio

---

## Launching AWS Instance
### Local setup
- Put the SSH key into the .ssh folder
- run 'chmod 400 105.pem' to change the '105.prem' file to readonly

### AWS Setup
- Select EC2 instance
- Select instance OS
  - Choose ubuntu 18.04
- Select subnet 'DevOpsStudent 1a'
- Select resources 
  - default storage
  - family t2 micro
- Add tags (set name of instance)
- Enable public ip
- Setup rules (create security groups to allow port 22 (SSH) and port 80 (HTTP, use my ip))
- select 104a

### Once running
- run 'ssh -i "105.pem" ubuntu@ec2-54-216-127-89.eu-west-1.compute.amazonaws.com' to connect to the instance from the localhost

- run 'sudo apt-get update -y'
- run 'sudo apt-get upgrade -y'
- run 'sudo apt-get install nginx -y'
- Check that nginx has installed correctly by checking the public ip in a browser