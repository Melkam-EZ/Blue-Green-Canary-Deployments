# Blue-Green and Canary Deployments

This project demonstrates advanced deployment strategies (Canary and Blue-Green) on Kubernetes using Argo Rollouts.

## Repository Structure
- `terraform/`: Infrastructure as Code to provision the Kubernetes node (EC2).
- `app/`: Argo Rollouts manifests defining the Canary strategy.
- `scripts/`: Bootstraps Minikube and the Argo Rollouts controller.
- `tests/`: Scripts to trigger a new release and observe traffic shifting.
- `.github/workflows/`: CI pipeline configuration.

## Setup Instructions

1. **Provision Infrastructure**
   - cd into `terraform/`
   - Run `terraform init` then `terraform apply -auto-approve`

2. **Configure Kubernetes & Argo Rollouts**
   - SSH into your EC2 instance.
   - Run `chmod +x scripts/setup.sh && ./scripts/setup.sh`

3. **Deploy & Test Canary Release**
   - Run `kubectl apply -f app/` to deploy the initial version.
   - Run `tests/test_canary.sh` to update the image and watch the automated 20% canary rollout proceed.
