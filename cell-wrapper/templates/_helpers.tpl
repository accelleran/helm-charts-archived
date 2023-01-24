{{/*
Number of configured DUs
*/}}
{{- define "cell-wrapper.nDus" -}}
{{- len .Values.global.config.dus -}}
{{- end }}

{{/*
Number of configured RUs
*/}}
{{- define "cell-wrapper.nRus" -}}
{{- $nRus := 0 -}}
{{- range $index, $du := .Values.global.config.dus -}}
  {{- $nRus = add $nRus (len $du.rus) -}}
{{- end -}}
{{- $nRus -}}
{{- end }}
