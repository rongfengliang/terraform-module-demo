# how to use

* include module

```code
module "users" {
  source = "./modules/users"
  username = "dddddemo"
}
```

* get template content

```code
module.users.exec_shell
```

* template conten

```code

see init.tpl
```