# terraform module demo

## users module

> see modules/users

* content

```code
├── README.md
├── init.tpl
├── main.tf
├── outputs.tf
└── variables.tf
```

## how to use

* include module block code

```code
module "users" {
  source = "./modules/users"
  username = "dddddemo"
  consul_host ="http://127.0.0.1:8500"
}
```

* get  local module

```code
terraform get
```

* init

```code
terraform  init
```

* view plan

```code
terraform plan
```

* apply

```code
terraform apply
```

* output result file

like below

```code
#!/bin/bash
curl -X POST \
  http://"http://127.0.0.1:8500" \
  -H 'Content-Type: application/json' \
  -H 'cache-control: no-cache' \
  -d '{
  "name":"dddddemo",
  "age": "444",
  "platform":"mobile",
  "id":"d288df44-c939-1ca3-0bb6-b8998b9305ca"
}'

```