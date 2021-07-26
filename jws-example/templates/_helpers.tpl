{{- define "test" }}
{{- with .Values }}
{{- printf "jfc_pas_super_test%s" .test }}
{{- end }}
{{- end }}
{{- define "imagePullSecret" }}
{{- printf "{\"auths\": {\"%s\": {\"auth\": \"%s\"}}}" .Values.imageCredentials.registry (printf "%s:%s" .Values.imageCredentials.username .Values.imageCredentials.password | b64enc) | b64enc }}
{{- end }}
