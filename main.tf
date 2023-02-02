variables "hello" {
  type = string
}

output "world" {
 value = "Hello ${var.hello}" 
}
