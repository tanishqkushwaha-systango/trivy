==============================
Trivy License Scan Summary
==============================

{{- range . }}
Target: {{ .Target }}

{{- if .Licenses }}
Licenses Found:
{{- range .Licenses }}
- Package  : {{ .PkgName }}
  Version  : {{ .PkgVersion }}
  License  : {{ .Name }}
{{- end }}
{{- else }}
No license issues detected
{{- end }}

--------------------------------
{{- end }}
