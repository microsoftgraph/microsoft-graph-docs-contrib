---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

$params = @{
	servicePrincipalLockConfiguration = @{
		isEnabled = $true
		allProperties = $true
	}
}

Update-MgBetaApplication -ApplicationId $applicationId -BodyParameter $params

```