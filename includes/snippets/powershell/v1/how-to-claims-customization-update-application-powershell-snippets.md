---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	api = @{
		acceptMappedClaims = $true
		requestedAccessTokenVersion = 2
	}
}

Update-MgApplication -ApplicationId $applicationId -BodyParameter $params

```