==============================
Trivy Image Scan Summary
==============================

{{- range . }}
Target: {{ .Target }}
Class : {{ .Class }}

{{- if and (eq .Class "os-pkgs") .Metadata }}
OS    : {{ .Metadata.OS.Name }} {{ .Metadata.OS.Version }}
{{- end }}

{{- if .Vulnerabilities }}
Vulnerabilities Found:
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
