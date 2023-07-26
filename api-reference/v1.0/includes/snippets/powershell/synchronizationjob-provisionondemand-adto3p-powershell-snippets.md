---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	parameters = @(
		@{
			subjects = @(
				@{
					objectId = "9bb0f679-a883-4a6f-8260-35b491b8b8c8"
					objectTypeName = "User"
				}
			)
			ruleId = "ea807875-5618-4f0a-9125-0b46a05298ca"
		}
	)
}

New-MgServicePrincipalSynchronizationJobOnDemand -ServicePrincipalId $servicePrincipalId -SynchronizationJobId $synchronizationJobId -BodyParameter $params

```