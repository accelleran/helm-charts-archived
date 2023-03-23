{{/*
Expand the name of the chart.
*/}}
{{- define "five-g-appl.name" -}}
{{- if index .Values "e2tsctp" }}
{{- default .Chart.Name .Values.e2tsctp.nameOverride | trunc 63 | trimSuffix "-" }}
{{- else if index .Values "e2tap" }}
{{- default .Chart.Name .Values.e2tap.nameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- default .Chart.Name .Values.e2smkpm.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "five-g-appl.fullname" -}}
{{- if index .Values "e2tsctp" }}
    {{- if .Values.e2tsctp.fullnameOverride }}
    {{- .Values.e2tsctp.fullnameOverride | trunc 63 | trimSuffix "-" }}
    {{- else }}
    {{- $name := default .Chart.Name .Values.e2tsctp.nameOverride }}
    {{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
    {{- end }}
{{- else if index .Values "e2tap" }}
    {{- if .Values.e2tap.fullnameOverride }}
    {{- .Values.e2tap.fullnameOverride | trunc 63 | trimSuffix "-" }}
    {{- else }}
    {{- $name := default .Chart.Name .Values.e2tap.nameOverride }}
    {{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
    {{- end }}
{{- else }}
    {{- if .Values.e2smkpm.fullnameOverride }}
    {{- .Values.e2smkpm.fullnameOverride | trunc 63 | trimSuffix "-" }}
    {{- else }}
    {{- $name := default .Chart.Name .Values.e2smkpm.nameOverride }}
    {{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
    {{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "five-g-appl.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "five-g-appl.labels" -}}
helm.sh/chart: {{ include "five-g-appl.chart" . }}
{{ include "five-g-appl.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
drax/role: e2
drax/name: e2t
drax/component-name: {{ .Chart.Name }}
drax/component-version: {{ .Chart.Version }}
{{- if index .Values "e2tsctp" }}
drax/instanceId: "{{ tpl .Values.global.bootstrapId . }}"
{{- else if index .Values "e2tap" }}
drax/instanceId: "{{ tpl .Values.global.bootstrapId . }}"
{{- else }}
drax/instanceId: "{{ tpl .Values.global.bootstrapId . }}"
{{- end }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "five-g-appl.selectorLabels" -}}
app.kubernetes.io/name: {{ include "five-g-appl.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "five-g-appl.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "five-g-appl.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}