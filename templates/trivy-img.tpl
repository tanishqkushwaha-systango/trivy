==============================
Trivy Image Scan Summary
==============================

{{- range . }}
Target: {{ .Target }}
OS    : {{ .Metadata.OS.Name }} {{ .Metadata.OS.Version }}

{{- if .Vulnerabilities }}
Vulnerabilities Found:
{{- range .Vulnerabilities }}
- ID        : {{ .VulnerabilityID }}
  Package   : {{ .PkgName }}
  Version   : {{ .InstalledVersion }}
  Fixed In  : {{ .FixedVersion }}
  Severity  : {{ .Severity }}
  Layer     : {{ .Layer.Digest }}
{{- end }}
{{- else }}
No vulnerabilities detected
{{- end }}

--------------------------------
{{- end }}
