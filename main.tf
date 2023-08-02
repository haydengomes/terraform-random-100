# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

resource "random_id" "random" {
  keepers = {
    uuid = uuid()
  }

  byte_length = 8
}

output "random" {
  value = random_id.random.hex
}

resource "random_string" "example" {
  count  = 100
  length = 8
}

output "random_strings" {
  value = random_string.example.*.result
}
