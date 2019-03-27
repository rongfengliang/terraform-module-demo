module "users" {
  source = "./modules/users"
  username = "dddddemo"
  consul_host ="http://127.0.0.1:8500"
}
resource "local_file" "foo" {
    content  = "${module.users.exec_shell}" 
    filename = "${path.module}/init.sh"
}