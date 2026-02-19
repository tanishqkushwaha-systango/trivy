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
  File     : {{ .FilePath }}
{{- end }}
{{- else }}
No license issues detected
{{- end }}

--------------------------------
{{- end }}
