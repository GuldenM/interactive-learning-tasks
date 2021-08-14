resource "aws_iam_user" "users" {
  name = "bob"
  path = "/system/"
  tags = {
    Team = "DevOps"
  }
}
resource "aws_iam_group" "sysusers" {
  name = "sysusers"
  path = "/users/"

}

resource "aws_iam_user_group_membership" "usersys" {
  user = aws_iam_user.users.name

  groups = [
    aws_iam_group.sysusers.name
  ]
}



output "user" {
  value = aws_iam_user.users.name
 }
output "group_name" {
  value = aws_iam_group.sysusers.name
 }