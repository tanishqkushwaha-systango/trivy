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
  Resource  : {{ .Resource }}
  File      : {{ .FilePath }}
  Line      : {{ .StartLine }} - {{ .EndLine }}
  Message   : {{ .Message }}
  Resolution: {{ .Resolution }}
{{- end }}
{{- else }}
No misconfigurations detected
{{- end }}

--------------------------------
{{- end }}
