==============================
Trivy Secret Scan Report
==============================

{{- range . }}
--------------------------------------------------
Scanned File : {{ .Target }}
Scan Type   : Secret Detection
--------------------------------------------------

{{- if .Secrets }}
  Secrets Detected ({{ len .Secrets }} finding{{ if gt (len .Secrets) 1 }}s{{ end }})

{{- range .Secrets }}
--------------------------------
Secret Type : {{ .Title }}
Rule ID    : {{ .RuleID }}
Category   : {{ .Category }}
Severity   : {{ .Severity }}

Location   : {{ $.Target }}
Line Range : {{ .StartLine }} - {{ .EndLine }}

Detected Value:
{{ .Match }}

Code Context:
{{- range .Code.Lines }}
  {{ .Number }} | {{ .Content }}
{{- end }}

{{- end }}
{{- else }}
 No secrets detected in this file
{{- end }}

==================================================
{{- end }}
