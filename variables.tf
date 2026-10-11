variable "project_target_branch_rules" {
  description = <<EOT
Map of project_target_branch_rules, attributes below
Required:
    - project
    - source_branch_pattern
    - target_branch_name
EOT

  type = map(object({
    project               = string
    source_branch_pattern = string
    target_branch_name    = string
  }))
}

