module "test" {
  source  = "patterned-designs/test/null"
  version = "0.0.2"
}

output "sample" {
    value = module.test.my_output
}