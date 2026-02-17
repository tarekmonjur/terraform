data "local_file" "team_members" {
  filename = "team-members.txt"
}

output "members-name" {
  value = data.local_file.team_members
}