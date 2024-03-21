---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.CloudCommunications

$params = @{
	clientContext = "clientContext-value"
	status = "notRecording | recording | failed"
}

Update-MgBetaCommunicationCallRecordingStatus -CallId $callId -BodyParameter $params

```