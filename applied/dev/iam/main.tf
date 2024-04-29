resource "aws_iam_user" "user_1" {
  name = "promise_user1"
}

# another way to create iam user using for_each
resource "aws_iam_user" "users" {
  for_each = {
    "promise" = "arn:aws:iam::aws:policy/readOnlyAcess"
    "Nogie"   = "arn:aws:iam::aws:policy/readOnlyAcess"
    "Rofiat"  = "arn:aws:iam::aws:policy/readOnlyAcess"
  }

  name = each.key
}
