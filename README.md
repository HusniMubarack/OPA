# OPA Deployment in Minikube

This repository contains files necessary to deploy OPA (Open Policy Agent) in a Kubernetes cluster running on Minikube.

## Prerequisites

Before you begin, make sure you have the following installed:

- [Minikube](https://minikube.sigs.k8s.io/docs/start/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)

## Deployment

Follow these steps to deploy OPA in Minikube:

1. Clone this repository:

Navigate to the cloned repository:

```bash

cd <repository_directory>

```
2. Apply the OPA deployment and service configuration:

```bash

kubectl apply -f opa-deployment.yaml -f opa-service.yaml
```

3. Verify that the OPA deployment is running:

```bash
kubectl get pods
```

4. Ensure that the opa-deployment pod is in the Running state.

Once the deployment is running, you can access OPA's REST API. By default, the service is exposed on port 8181. To access it, you can use port-forwarding:

```bash
kubectl port-forward service/opa-service 8181:8181
```

OPA's API will now be accessible at http://localhost:8181.

## Using OPA
With OPA deployed, you can now define and enforce policies for your Kubernetes resources. To get started with writing policies, refer to the [Open Policy Agent Documentation](https://www.openpolicyagent.org/docs/latest/kubernetes-introduction/)
.