==============================
Trivy Config / IaC Scan Summary
==============================

{{- range . }}
Target: {{ .Target }}

{{- if .Misconfigurations }}
Misconfigurations Found:
{{- range .Misconfigurations }}
- ID        : {{ .ID }}
  Title     : {{ .Title }}
  Severity  : {{ .Severity }}
  Provider  : {{ .CauseMetadata.Provider }}
  Service   : {{ .CauseMetadata.Service }}
  File      : {{ .CauseMetadata.FilePath }}
  Location  : Line {{ .CauseMetadata.StartLine }} - {{ .CauseMetadata.EndLine }}
  Message   : {{ .Message }}
  Resolution: {{ .Resolution }}
{{- end }}
{{- else }}
No misconfigurations detected
{{- end }}

--------------------------------
{{- end }}
