---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	userIds = @(
		"4628e7df-dff3-407c-a08f-75f08c0806dc"
	)
}

Invoke-MgDismissRiskyUser -BodyParameter $params

```