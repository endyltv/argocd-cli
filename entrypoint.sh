#!/bin/bash
set -e
if [ -z "$ARGO_TOKEN" ]; then
  echo "ARGO TOKEN required but not defined."
  exit 1
fi

if [ -z "$ARGO_URL" ]; then
  echo "ARGOCD URL are required, but none defined."
  exit 1
fi

if [ -z "$ARGO_APPLICATION" ]; then
  echo "ARGO APPLICATION is required, but none defined."
  exit 1
fi

if [ -z "$ARGOCD_COMMAND" ]; then
  echo "ARGOCD COMMAND is required, but none defined."
  exit 1
fi

if [ -z "$ARGOCD_SUB_COMMAND" ]; then
  echo "ARGOCD SUB COMMAND is required, but none defined."
  exit 1
fi

argocd --server "${ARGO_URL}" --auth-token "${ARGO_TOKEN}" "${ARGOCD_COMMAND}" "${ARGOCD_SUB_COMMAND}" "${ARGO_APPLICATION}" --plaintext