output "username" {
  value = "${module.container.username}"
}

output "password" {
  value = "${module.container.password}"
   sensitive = true
}

output "login_server" {
  value = "${module.container.login_server}"
}

output "kubernetes_host" {
  value = "${module.kubernetes.host}"
}

