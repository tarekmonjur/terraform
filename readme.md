# Terraform Basics

### Type of IaC (Infrastructure as Code) tool
#### Configuration Management
- ANSIBLE
- Puppet
- SaltStack

#### Server Templating
- Docker
- Packer
- Vagrant

#### Provisioning Tools
- Terraform
- CloudFormation

## Basics Part

### Basic Syntax structure

```
<block> <parameter> {
  Key1 = Value1
  Key2 = Value2
}
```

#### Basics Example:

```
resource "local_file" "pet" {
  filename = "/root/pets.txt"
  content = "We love pets!"
}

// resource -> Block Name
// local_file -> Resource Type
// local -> provider
// file -> resource
// pet -> Resource Name
// filename / content -> Arguments
```

### Terraform Basics Command

```
terraform init
terraform validate
terraform fmt
terraform plan
terraform apply
terraform show
terraform output
terraform destroy
terraform providers
terraform providers mirror <destination>
terraform apply -refresh-only
terraform graph
terraform graph | dot -Tpng > graph.png
```

### Variables

#### Variable Types

| Type  | Example |
|-------|---------|
| string  | "/root/pets.txt"  |
| number  | 1                 |
| bool    | true/false        |
| any     | Default Value     |
| list    | ["cat", "dog"]    |
| map     | pet1 = cat, pet2 = dog |
| set     | [3, 5, 7]         |
| object  | complex data structure  |
| tuple   | complex data structure  |

#### Examples: String Type

```
----- variable.tf -----
variable "filename" {
  default = "/root/pets.txt"
  type  = string
  description = "the path of local file"
}

----- main.tf -----
resource "random_pet" "my_pet" {
  prefix = var.prefix[0]
}
```

#### Examples: List Type

```
----- variable.tf -----
variable "prefix" {
  default = ["Mr", "Mrs", "Sir"]
  type  = list // type = list(string)
}

----- main.tf -----
resource "random_pet" "my_pet" {
  prefix = var.prefix[0]
}
```

#### Examples: Map Type

```
----- variable.tf -----
variable "file-content" {
  type  = map // type = map(string)
  default = {
    "title1" = "We love pets!!"
    "title2" = "We love animals!!"
  }
}

----- main.tf -----
resource "local_file" "my_pet" {
  filename = "/root/pets.txt"
  content = var.file-content[title1]
}
```

#### Examples: Set Type

```
----- variable.tf -----
variable "fruit" {
  default = ["apple", "mango"]
  type  = set // type = set(string)
}

----- main.tf -----
resource "local_file" "my_fruit" {
  filename = "/root/pets.txt"
  content = var.fruit[1]
}
```

#### Examples: Tuple Type

```
----- variable.tf -----
variable person {
  type  = tuple([string, number, bool])

  default = ["Tom", 9, true]
}
```

### Variable Definition & Precedence

```
----- Environment -----
export TF_VAR_filename = "/root/cats.txt"
```

#### Variable definition file

```
----- terraform.tfvars -----
filename = "/root/pets.txt"
```

```
---- variable.auto.tfvars -----
filename = "/root/my_pets.txt"
```

```
terraform apply -var filename="/root/best-pets.txt"
```

#### Output Variable Structure

```
output <variable_name> {
  value = <variable_value>
  <arguments>
}
```

### Lifecycle Rules

```
lifecycle {
  create_before_destroy = true
}

lifecycle {
  prevent_destroy = false
}

lifecycle {
  ignore_changes = [argument1, argument2]
}
```
