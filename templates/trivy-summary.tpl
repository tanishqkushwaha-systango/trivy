{{- range .Results }}
Target: {{ .Target }}
Type: {{ .Type }}

{{- if .Vulnerabilities }}
Vulnerabilities:
{{- range .Vulnerabilities }}
- {{ .VulnerabilityID }} | {{ .PkgName }} | {{ .Severity }} | {{ .Title }}
{{- end }}
{{- else }}
No vulnerabilities found
{{- end }}

----------------------------------------
{{- end }}
