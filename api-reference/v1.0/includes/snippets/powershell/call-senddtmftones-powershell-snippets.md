---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.CloudCommunications

$params = @{
	tones = @(
	"tone1"
"tone2"
"tone3"
"tone4"
"tone5"
"tone6"
"tone7"
"tone8"
"tone9"
"tone0"
"star"
"pound"
)
delayBetweenTonesMs = 1000
clientContext = "e0be71f1-a14f-4cec-b65a-e7aba5db7c53"
}

Send-MgCommunicationCallDtmfTone -CallId $callId -BodyParameter $params

```