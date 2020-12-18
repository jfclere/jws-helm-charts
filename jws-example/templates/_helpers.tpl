{{- define "test" }}
{{- with .Values }}
{{- printf "jfc_pas_super_test%s" .test }}
{{- end }}
{{- end }}
