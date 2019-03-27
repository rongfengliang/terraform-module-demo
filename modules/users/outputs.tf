output "exec_shell" {
    value = "${data.template_file.init.rendered}"
}