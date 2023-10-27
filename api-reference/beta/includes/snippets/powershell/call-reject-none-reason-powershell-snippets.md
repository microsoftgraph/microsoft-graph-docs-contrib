---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.CloudCommunications

$params = @{
	reason = "none"
}

Invoke-MgBetaRejectCommunicationCall -CallId $callId -BodyParameter $params

```