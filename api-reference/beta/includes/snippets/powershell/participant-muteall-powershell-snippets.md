---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.CloudCommunications

$params = @{
	participants = @(
		""
	)
	clientContext = "clientContext-value"
}

Invoke-MgBetaMuteAllCommunicationCallParticipant -CallId $callId -BodyParameter $params

```