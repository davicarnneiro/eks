variable "cluster_name" {
  description = "Define o nome do seu Cluster"
  default     = "devops-eks"
}

variable "region" {
  description = "Define a região que seu cluster sera criado"
  default     = "us-west-1"
}

variable "kubernetes_version" {
  description = "Define a versão do cluster"
  default     = "1.27"
}

variable "desired_size" {
  description = "Define um valor para os nodes"
  default     = 3
}

variable "max_size" {
  description = "Define a quantidade maxina de nodes"
  default     = 3
}

variable "min_size" {
  description = "Define a quantidade minima de nodes"
  default     = 3
}
