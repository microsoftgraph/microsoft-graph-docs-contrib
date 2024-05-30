---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

$params = @{
	displayName = "New display name"
}

Update-MgBetaApplication -ApplicationId $applicationId -BodyParameter $params

```