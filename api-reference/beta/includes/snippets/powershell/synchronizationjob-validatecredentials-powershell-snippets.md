---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	credentials = @(
		@{
			key = "UserName"
			value = "user@domain.com"
		}
		@{
			key = "Password"
			value = "password-value"
		}
	)
}

Test-MgServicePrincipalSynchronizationJobCredentials -ServicePrincipalId $servicePrincipalId -SynchronizationJobId $synchronizationJobId -BodyParameter $params

```