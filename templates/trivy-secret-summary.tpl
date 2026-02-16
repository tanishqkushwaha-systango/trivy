{{- range . }}
{{- $file := .Target }}

Target File: {{ $file }}

{{- range .Secrets }}
File: {{ $file }}
{{- end }}

{{- end }}
