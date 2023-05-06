---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	parameters = @(
		@{
			ruleId = "6c409270-f78a-4bc6-af23-7cf3ab6482fe"
			subjects = @(
				@{
					objectId = "CN=AdeleV,CN=Users,DC=corp,DC=chicago,DC=com"
					objectTypeName = "user"
				}
			)
		}
	)
}

New-MgServicePrincipalSynchronizationJobOnDemand -ServicePrincipalId $servicePrincipalId -SynchronizationJobId $synchronizationJobId -BodyParameter $params

```