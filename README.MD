## Infraestrutura do EKS


```
├── modules
│   ├── master
│   │   ├── eks-master.tf
│   │   ├── iam.tf
│   │   ├── security-group.tf
│   │   ├── variables.tf
│   │   └── output.tf
│   ├── network
│   │   ├── vpc.tf
│   │   ├── subnet-private.tf
│   │   ├── subnet-public.tf
│   │   ├── nat-gateway.tf
│   │   ├── internet-gateway.tf
│   │   ├── variables.tf
│   │   └── output.tf
│   └── node
│       ├── iam.tf
│       ├── node-group.tf
│       └── variables.tf
├── modules.tf
├── provider.tf
└── variables.tf
```

Esclarecendo a estrutura:

+ Temos uma pasta com os módulos, e para cada módulo também temos uma pasta com o nome e os arquivos .tf.
+ No módulo de network tem toda a configuração de rede (vpc, subnets (Publicas e Privadas), internet gateway, nat gateway, etc).
+ No módulo master tem a configuração do control plane do EKS.
+ No módulo node tem as configurações dos workers.
+ E Por último, mas não menos importante, temos os arquivos na raíz do projeto que farão o uso e a junção de todos os módulos.