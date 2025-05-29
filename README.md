# Les 05 - CI/CD met Ansible, GitHub Actions & Terraform

## Bron
https://chatgpt.com/share/6837f6d0-baf0-8002-9f35-0f3c39f8d61e

## Inhoud

Deze repository bevat de uitwerking van drie opdrachten rondom Ansible, GitHub Actions, en Terraform. Je leert hoe je CI/CD-pipelines opzet met een lokale GitHub Runner, Ansible gebruikt zonder de `apt` module, en Terraform inzet voor VM-deployments via ESXi.

---

## 🧪 Opdracht 1 - Ansible Playbook zonder `apt` module

- **Bestand:** `install.apache.yml`
- **Beschrijving:** Installeert Apache2 zonder gebruik van de `apt` module via een shell-task.
- **Doel:** Laat zien dat er een 'changed' melding komt bij succesvolle installatie, en simuleert ook een fout in een aparte taak om error-handling te demonstreren.

---

## ⚙️ Opdracht 2 - GitHub Runner + CI/CD Workflow

- **Runner:** Lokale GitHub Actions Runner geïnstalleerd.
- **Playbook:** Installeert Apache of Nginx.
- **Workflow:** Wordt automatisch gestart bij een `push` naar de repository.
- **Stages:**
  - Code check (bijv. Ansible linting)
  - Playbook uitvoeren
  - Logging van resultaat

---

## ☁️ Opdracht 3 - Terraform + GitHub Actions

- **Terraform:** Deployt een eenvoudige VM op een lokale ESXi-server.
- **Bestanden:** `main.tf`, `providers.tf`
- **Features:**
  - CI/CD pipeline voert `terraform init`, `plan` en `apply` uit.
  - Controle op best practices (bijv. `terraform fmt`, `tflint`)
  - Workflow triggert alleen bij `.tf`-wijzigingen.
  - Handmatige workflow beschikbaar voor `terraform destroy`.
  - Na succesvolle creatie wordt een bestand gegenereerd met de VM-naam en het IP-adres.

---

## 📁 Structuur

```bash
.
├── actions-runner/           # Lokale GitHub runner
├── .github/workflows/        # Bevat alle CI/CD workflows
│   ├── ansible.yml
│   └── terraform.yml
├── install.apache.yml        # Ansible playbook opdracht 1 & 2
├── main.tf                   # Terraform configuratie voor VM
├── providers.tf              # Provider info voor ESXi
└── README.md                 # Deze uitleg
