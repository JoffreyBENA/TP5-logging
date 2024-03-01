# Output pour l'endpoint externe (public) du cluster
output "cluster_external_endpoint" {
    value = google_container_cluster.gke-cluster.endpoint
    description = "Endpoint externe (public) du cluster GKE"
}

# Output pour le nom du cluster GKE
output "cluster_name" {
    value       = google_container_cluster.gke-cluster.name
    description = "Nom du cluster GKE"
}

# Outpur pout la région du cluster GKE
output "region" {
    value       = google_container_cluster.gke-cluster.location
    description = "Région du cluster GKE"
}