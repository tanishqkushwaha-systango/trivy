==============================
Trivy Secret Scan Report
==============================

{{- range . }}
{{- $file := .Target }}

--------------------------------------------------
Scanned File : {{ $file }}
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

Location   : {{ $file }}
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
