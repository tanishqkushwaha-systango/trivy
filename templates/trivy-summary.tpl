========================================
TRIVY SECURITY SCAN SUMMARY
========================================

Scan Target: {{ .ArtifactName }}
Scan Type  : {{ .ArtifactType }}

{{- if .Results }}
{{- range .Results }}

----------------------------------------
Target: {{ .Target }}
----------------------------------------

{{- if .Vulnerabilities }}
VULNERABILITIES FOUND:
{{- range .Vulnerabilities }}

- ID        : {{ .VulnerabilityID }}
  Severity  : {{ .Severity }}
  Package   : {{ .PkgName }}
  Installed : {{ .InstalledVersion }}
  Fixed     : {{ if .FixedVersion }}{{ .FixedVersion }}{{ else }}Not Available{{ end }}
  Title     : {{ .Title }}

{{- end }}
{{- else }}
No HIGH or CRITICAL vulnerabilities found.
{{- end }}

{{- end }}
{{- else }}
No scan results available.
{{- end }}

========================================
END OF REPORT
========================================
