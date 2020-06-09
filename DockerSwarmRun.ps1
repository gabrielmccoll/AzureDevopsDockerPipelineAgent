#https://docs.microsoft.com/en-us/virtualization/windowscontainers/manage-containers/swarm-mode
#ipconfig
#make sure on windows containers
docker swarm init --advertise-addr=192.168.1.221 --listen-addr 192.168.1.221:2377 

# Deploy a service to the swarm
docker service create --name=ADOAgent --endpoint-mode dnsrr -e AZP_URL=<Azure DevOps instance> -e AZP_TOKEN=<PAT token> -e AZP_AGENT_NAME=DockerContainerAgent  gabrielmccoll/windowsadoagent
