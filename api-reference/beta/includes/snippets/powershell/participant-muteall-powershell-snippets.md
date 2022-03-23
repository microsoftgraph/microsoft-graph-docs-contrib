---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.CloudCommunications

$params = @{
	Participants = @(
		""
	)
	ClientContext = "clientContext-value"
}

Invoke-MgMuteCommunicationCallParticipant -CallId $callId -BodyParameter $params

```