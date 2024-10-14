#####
# Output
#####

output "ssh_user" {
  description = "SSH user to download kubeconfig file"
  value       = "centos"
}

output "public_ip" {
  description = "Public IP address"
  value       = aws_eip.minikube.public_ip
}

output "dns" {
  description = "Minikube DNS address"
  value       = aws_route53_record.minikube.fqdn
}

output "kubeconfig_dns" {
  description = "Path to the the kubeconfig file using DNS address"
  value       = "/home/centos/kubeconfig"
}

output "kubeconfig_ip" {
  description = "Path to the kubeconfig file using IP address"
  value       = "/home/centos/kubeconfig_ip"
}

output "ami_id" {
    value = data.aws_ami.devops_ami.id
}
