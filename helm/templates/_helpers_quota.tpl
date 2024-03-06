{{/* 
Resource quota:
  persistentvolumeclaims  maximum number of claimed persistent volumes
  pods                    the total number of pods in a non-terminal state that can exist in the project
  requests.cpu            the sum of CPU requests across all pods in a non-terminal state cannot exceed this value
  requests.memory         the sum of memory requests across all pods in a non-terminal state cannot exceed this value
  requests.storage        the sum of storage requests across all persistent volume claims cannot exceed this value
  resourcequotas          the total number of resource quotas that can exist in the project
*/}}
{{- define "quota.micro" }}
persistentvolumeclaims: "10"
pods: "20"
requests.cpu: "4"
requests.memory: 16Gi
requests.storage: 250Gi
resourcequotas: "1"
{{- end }}

{{- define "quota.mini" }}
persistentvolumeclaims: "10"
pods: "60"
requests.cpu: "8"
requests.memory: 32Gi
requests.storage: 250Gi
resourcequotas: "1"
{{- end }}

{{- define "quota.small" }}
persistentvolumeclaims: "10"
pods: "60"
requests.cpu: "12"
requests.memory: 64Gi
requests.storage: 250Gi
resourcequotas: "1"
{{- end }}

{{- define "quota.extraflexible" }}
persistentvolumeclaims: "20"
pods: "100"
requests.cpu: "40"
requests.memory: 120Gi
requests.storage: 250Gi
resourcequotas: "1"
{{- end }}

{{- define "quota.medium" }}
persistentvolumeclaims: "20"
pods: "60"
requests.cpu: "20"
requests.memory: 80Gi
requests.storage: 350Gi
resourcequotas: "1"
{{- end }}

{{- define "quota.large" }}
persistentvolumeclaims: "20"
pods: "60"
requests.cpu: "30"
requests.memory: 120Gi
requests.storage: 1024Gi
resourcequotas: "1"
{{- end }}

{{- define "quota.xlarge" }}
persistentvolumeclaims: "30"
pods: "60"
requests.cpu: "60"
requests.memory: 250Gi
requests.storage: 1024Gi
resourcequotas: "1"
{{- end }}
