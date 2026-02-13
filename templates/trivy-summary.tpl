{{- range . }}
Target: {{ .Target }}
Type: {{ .Type }}

{{- if .Vulnerabilities }}
Vulnerabilities:
{{- range .Vulnerabilities }}
- {{ .VulnerabilityID }} | {{ .PkgName }} | {{ .Severity }}
{{- end }}
{{- else }}
No vulnerabilities found
{{- end }}

----------------------------------------
{{- end }}
