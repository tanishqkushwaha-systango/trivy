==============================
Trivy Secret Scan Summary
==============================

{{- range . }}
Target: {{ .Target }}

{{- if .Secrets }}
Secrets Detected:
{{- range .Secrets }}
- Rule      : {{ .RuleID }}
  Category  : {{ .Category }}
  Severity  : {{ .Severity }}
  File      : {{ .FilePath }}
  Line      : {{ .StartLine }}
{{- end }}
{{- else }}
No secrets detected
{{- end }}

--------------------------------
{{- end }}
