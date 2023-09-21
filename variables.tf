# variable repos {
#   description = "contains the repository objects"
#   type = list(object({
#     name = string
#     description = string
#   }))
# }

# variable "repos_ownership" {
#   type = map(list(object({
#     repo_name   = string
#     permission  = string
#   })))
#   description = "Mapping of teams to repositories and permissions"
# }

variable "repo_module_vars" {
  type = object({
    repos = list(object({
      name        = string
      description = string
    }))
    repos_ownership = object({
      "FE Development Team" = list(object({
        repo_name  = string
        permission = string
      }))
      "BE Development Team" = list(object({
        repo_name  = string
        permission = string
      }))
    })
  })
}