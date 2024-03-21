---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.CloudCommunications

$params = @{
	role = "viewer"
}

Rename-MgBetaCommunicationCallScreenSharingRole -CallId $callId -BodyParameter $params

```