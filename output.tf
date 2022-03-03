output "helm_release" {
  description = "Helm of ArgoCD Deployment"
  value       = !var.enabled && var.argo_application_enabled ? null : !var.self_managed ? helm_release.this[0] : helm_release.self_managed[0]
}
