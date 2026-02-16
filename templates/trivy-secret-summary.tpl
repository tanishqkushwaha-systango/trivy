==============================
Trivy Secret Scan Summary
==============================

{{- range . }}
Target File: {{ .Target }}

{{- if .Secrets }}
Secrets Detected:
{{- range .Secrets }}
--------------------------------
Rule ID   : {{ .RuleID }}
Category  : {{ .Category }}
Severity  : {{ .Severity }}
Title     : {{ .Title }}

File      : {{ $.Target }}
StartLine : {{ .StartLine }}
EndLine   : {{ .EndLine }}

Detected Value:
{{ .Match }}

Code Snippet:
{{- range .Code.Lines }}
  {{ .Number }} | {{ .Content }}
{{- end }}

{{- end }}
{{- else }}
No secrets detected
{{- end }}

================================
{{- end }}
