==============================
Trivy Image Vulnerability Summary
==============================

{{- range . }}
Target: {{ .Target }}
Class : {{ .Class }}

{{- if .Vulnerabilities }}
Vulnerabilities:
{{- range .Vulnerabilities }}
--------------------------------
ID        : {{ .VulnerabilityID }}
Package   : {{ .PkgName }}
Installed : {{ .InstalledVersion }}
Fixed In  : {{ .FixedVersion }}
Severity  : {{ .Severity }}
{{- if .Layer }}
Layer     : {{ .Layer.Digest }}
{{- end }}
{{- end }}
{{- else }}
No vulnerabilities detected
{{- end }}

================================
{{- end }}
