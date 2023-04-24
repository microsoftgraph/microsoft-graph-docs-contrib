---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.CloudCommunications

$params = @{
	clientContext = "clientContext-value"
	status = "notRecording | recording | failed"
}

Update-MgCommunicationCallRecordingStatus -CallId $callId -BodyParameter $params

```