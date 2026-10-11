resource "gitlab_project_target_branch_rule" "project_target_branch_rules" {
  for_each = var.project_target_branch_rules

  project               = each.value.project
  source_branch_pattern = each.value.source_branch_pattern
  target_branch_name    = each.value.target_branch_name
}

