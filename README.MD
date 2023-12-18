## Infraestrutura do EKS


```
├── modules
│   ├── master
│   │   ├── eks-master.tf
│   │   ├── iam.tf
│   │   ├── output.tf
│   │   ├── security-group.tf
│   │   └── variables.tf
│   ├── network
│   │   ├── internet-gateway.tf
│   │   ├── nat-gateway.tf
│   │   ├── output.tf
│   │   ├── private.tf
│   │   ├── public.tf
│   │   ├── variables.tf
│   │   └── vpc.tf
│   └── node
│       ├── iam.tf
│       ├── node-group.tf
│       └── variables.tf
├── modules.tf
├── provider.tf
└── variables.tf
```

Esclarecendo a estrutura:

+ Veja que temos uma pasta com os módulos, e para cada módulo também temos uma pasta com o nome e os arquivos .tf dentro
+ O módulo de network contém toda a configuração de rede (vpc, subnet, internet gateway, nat gateway, rotas, etc)
+ O módulo master contém a configuração do control plane do EKS
+ O módulo node contém as configurações dos workers
+ Por último temos os arquivos na raíz do projeto que farão o uso e a junção de todos os módulos