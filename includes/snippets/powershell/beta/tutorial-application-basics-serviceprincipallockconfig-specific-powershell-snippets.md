---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

$params = @{
	servicePrincipalLockConfiguration = @{
		isEnabled = $true
		credentialsWithUsageSign = $true
		credentialsWithUsageVerify = $true
	}
}

Update-MgBetaApplication -ApplicationId $applicationId -BodyParameter $params

```