==============================
Trivy Vulnerability Scan Summary
==============================

{{- range . }}
Target: {{ .Target }}
Type  : {{ .Type }}

{{- if .Vulnerabilities }}
Vulnerabilities Found:
{{- range .Vulnerabilities }}
- ID        : {{ .VulnerabilityID }}
  Package   : {{ .PkgName }}
  Version   : {{ .InstalledVersion }}
  Fixed In  : {{ .FixedVersion }}
  Severity  : {{ .Severity }}
  Title     : {{ .Title }}
  CVSS      : {{ (index .CVSS "nvd").V3Score }}
  Reference : {{ .PrimaryURL }}
{{- end }}
{{- else }}
No vulnerabilities detected
{{- end }}

--------------------------------
{{- end }}
