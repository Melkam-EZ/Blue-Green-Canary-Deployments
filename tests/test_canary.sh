#!/bin/bash
echo "Triggering a Canary Update to 'yellow' image..."
kubectl argo rollouts set image demo-rollout demo=argoproj/rollouts-demo:yellow

echo "Watching rollout status..."
kubectl argo rollouts get rollout demo-rollout --watch
