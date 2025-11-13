Inicializar, validar, planificar y aplicar la configuración de Terraform para desplegar el cluster AKS.

terraform init
terraform validate
terraform plan
terraform apply

Obtener las credenciales del cluster y verificar la conexión con kubectl.

az aks get-credentials --resource-group rg-aks-demo --name mi-aks-cluster
kubectl get nodes
