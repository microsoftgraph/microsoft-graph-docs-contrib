---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Search

$params = @{
	id = "e5477431-1038-484e-bf69-1dfedb97a110"
	type = "group"
}

New-MgExternalConnectionGroupMember -ExternalConnectionId $externalConnectionId -ExternalGroupId $externalGroupId -BodyParameter $params

```