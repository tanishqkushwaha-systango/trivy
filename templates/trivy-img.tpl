==============================
Trivy Image OS Vulnerabilities
==============================

{{- range . }}
{{- if eq .Class "os-pkgs" }}
Target: {{ .Target }}

OS: {{ .Metadata.OS.Name }} {{ .Metadata.OS.Version }}

{{- if .Vulnerabilities }}
Vulnerabilities:
{{- range .Vulnerabilities }}
--------------------------------
ID        : {{ .VulnerabilityID }}
Package   : {{ .PkgName }}
Installed : {{ .InstalledVersion }}
Fixed In  : {{ .FixedVersion }}
Severity  : {{ .Severity }}
{{- end }}
{{- else }}
No OS vulnerabilities detected
{{- end }}

================================
{{- end }}
{{- end }}
