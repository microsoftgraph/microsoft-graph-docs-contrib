---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.CloudCommunications

$params = @{
	Reason = "busy"
}

Invoke-MgRejectCommunicationCall -CallId $callId -BodyParameter $params

```