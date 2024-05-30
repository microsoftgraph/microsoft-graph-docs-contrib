---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

$params = @{
	authenticationBehaviors = @{
		removeUnverifiedEmailClaim = $false
	}
}

Update-MgBetaApplication -ApplicationId $applicationId -BodyParameter $params

```