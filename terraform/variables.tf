variable "resource_group_name" {
  description = "Nombre del grupo de recursos"
  type        = string
  default     = "rg-aks-devsu-api"
}

variable "location" {
  description = "Ubicación de Azure"
  type        = string
  default     = "East US"
}

variable "cluster_name" {
  description = "Nombre del cluster AKS"
  type        = string
  default     = "aks-devsu-cluster"
}

variable "node_count" {
  description = "Número inicial de nodos"
  type        = number
  default     = 2
}

variable "node_vm_size" {
  description = "Tamaño de VM para los nodos"
  type        = string
  default     = "Standard_D2s_v3"
}

variable "kubernetes_version" {
  description = "Versión de Kubernetes"
  type        = string
  default     = "1.27.7"
}

variable "app_name" {
  description = "Nombre de la aplicación"
  type        = string
  default     = "nodejs-api"
}

variable "app_namespace" {
  description = "Namespace de la aplicación"
  type        = string
  default     = "nodejs-app"
}

variable "app_image" {
  description = "Imagen Docker de la aplicación"
  type        = string
  default     = "node:18-alpine"
}

variable "app_port" {
  description = "Puerto de la aplicación"
  type        = number
  default     = 3000
}

variable "min_replicas" {
  description = "Número mínimo de réplicas para HPA"
  type        = number
  default     = 2
}

variable "max_replicas" {
  description = "Número máximo de réplicas para HPA"
  type        = number
  default     = 10
}

variable "cpu_target_percentage" {
  description = "Porcentaje objetivo de CPU para HPA"
  type        = number
  default     = 70
}