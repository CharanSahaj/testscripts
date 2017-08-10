az group create --name myResourceGroup --location eastus
az vm create --resource-group myResourceGroup --name myVM3 --image UbuntuLTS | python3 -c "import json,sys;sys.stdout.write(json.dumps(json.load(sys.stdin)['publicIpAddress']))">ips
az vm open-port --port 80 --resource-group myResourceGroup --name myVM3
az vm extension set --resource-group myResourceGroup --vm-name myVM3 --name customScript --publisher Microsoft.Azure.Extensions --no-wait --settings ./test.json
