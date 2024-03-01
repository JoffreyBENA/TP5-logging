output "instance-user" {
    value = var.user
}

# Output pour l'endpoint externe (public) du cluster
output "cluster_external_endpoint" {
    value = module.gke-cluster.cluster_external_endpoint
}

output "region" {
    value = module.gke-cluster.region
}

output "cluster_name" {
    value = module.gke-cluster.cluster_name
}