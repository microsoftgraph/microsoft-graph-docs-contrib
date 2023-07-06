---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.CloudCommunications

$params = @{
	reason = "busy"
}

Invoke-MgBetaRejectCommunicationCall -CallId $callId -BodyParameter $params

```