{{/* 
Resource limits:
  defaultRequest  how much CPU/memory will be given to container if not specified
  default         default limit of the amount of CPU/memory assigned to a container, if not specified
  max             maximum limit amount of CPU/memory that container can ask for
  min             minimum limit amount of CPU/memory that container can ask for

Flavour "smallopt" should be removed
*/}}
{{- define "limits.micro" }}
requests:
  cpu: 10m
  memory: 32Mi
limits:
  cpu: 200m
  memory: 386Mi
{{- end }}

{{- define "limits.mini" }}
requests:
  cpu: 10m
  memory: 64Mi
limits:
  cpu: 500m
  memory: 768Mi
{{- end }}

{{- define "limits.small" }}
requests:
  cpu: 10m
  memory: 1Gi
limits:
  cpu: 1500m
  memory: 2Gi
{{- end }}

{{- define "limits.extraflexible" }}
requests:
  cpu: 250m
  memory: 1Gi
limits:
  cpu: "3"
  memory: 10Gi
{{- end }}

{{- define "limits.medium" }}
requests:
  cpu: 200m
  memory: 2Gi
limits:
  cpu: 1500m
  memory: 3Gi
{{- end }}

{{- define "limits.large" }}
requests:
  cpu: 500m
  memory: 3Gi
limits:
  cpu: "2"
  memory: 4560Mi
{{- end }}

{{- define "limits.xlarge" }}
requests:
  cpu: "1"
  memory: 6Gi
limits:
  cpu: 3500m
  memory: 9Gi
{{- end }}
