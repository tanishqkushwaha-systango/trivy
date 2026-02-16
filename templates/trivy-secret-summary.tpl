==============================
Trivy Secret Scan Summary
==============================

{{- range . }}
Target: {{ .Target }}

{{- if .Secrets }}
Secrets Detected:
{{- range .Secrets }}
- Rule ID   : {{ .RuleID }}
  Category  : {{ .Category }}
  Severity  : {{ .Severity }}
  File      : {{ .FilePath }}
  Location  : Line {{ .StartLine }} - {{ .EndLine }}
  Match Type: {{ .Match }}
{{- end }}
{{- else }}
No secrets detected
{{- end }}

--------------------------------
{{- end }}
