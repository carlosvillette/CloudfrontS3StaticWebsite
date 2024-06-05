output "policy_json" {
  description = "the policy in json format"
  value = data.aws_iam_policy_document.this.json
}