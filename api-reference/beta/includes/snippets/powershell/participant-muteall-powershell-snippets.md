---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.CloudCommunications

$params = @{
	participants = @(
		""
	)
	clientContext = "clientContext-value"
}

Invoke-MgMuteAllCommunicationCallParticipant -CallId $callId -BodyParameter $params

```