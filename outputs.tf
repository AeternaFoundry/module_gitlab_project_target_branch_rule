output "project_target_branch_rules_id" {
  description = "Map of id values across all project_target_branch_rules, keyed the same as var.project_target_branch_rules except keys with no id are omitted"
  value       = { for k, v in gitlab_project_target_branch_rule.project_target_branch_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_target_branch_rules_project" {
  description = "Map of project values across all project_target_branch_rules, keyed the same as var.project_target_branch_rules except keys with no project are omitted"
  value       = { for k, v in gitlab_project_target_branch_rule.project_target_branch_rules : k => v.project if v.project != null && length(v.project) > 0 }
}
output "project_target_branch_rules_source_branch_pattern" {
  description = "Map of source_branch_pattern values across all project_target_branch_rules, keyed the same as var.project_target_branch_rules except keys with no source_branch_pattern are omitted"
  value       = { for k, v in gitlab_project_target_branch_rule.project_target_branch_rules : k => v.source_branch_pattern if v.source_branch_pattern != null && length(v.source_branch_pattern) > 0 }
}
output "project_target_branch_rules_target_branch_name" {
  description = "Map of target_branch_name values across all project_target_branch_rules, keyed the same as var.project_target_branch_rules except keys with no target_branch_name are omitted"
  value       = { for k, v in gitlab_project_target_branch_rule.project_target_branch_rules : k => v.target_branch_name if v.target_branch_name != null && length(v.target_branch_name) > 0 }
}

