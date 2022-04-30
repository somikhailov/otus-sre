# Terraform-libvirt OPA

This project contains terraform OPA rule for libvirt provider. 

---

---
## Installation

* terraform - [https://learn.hashicorp.com/tutorials/terraform/install-cli](https://learn.hashicorp.com/tutorials/terraform/install-cli).
* opa - [https://www.openpolicyagent.org/docs/latest/#running-opa](https://www.openpolicyagent.org/docs/latest/#running-opa).

---
## Usage

Running 
```bash
terraform init
terraform plan
terraform apply -auto-approve
```

using opa client
```
terraform plan --out tfplan.binary
terraform show -json tfplan.binary > tfplan.json
opa exec --decision terraform/analysis --bundle policy/ tfplan.json
```

Destroying
```
terraform destroy -auto-approve
```
---

## License
[MIT](https://choosealicense.com/licenses/mit/)