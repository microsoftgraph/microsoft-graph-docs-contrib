---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	Parameters = @(
		@{
			RuleId = "33f7c90d-bf71-41b1-bda6-aaf0ddbee5d8#V2"
			Subjects = @(
				@{
					ObjectId = "8213fd99-d6b6-417b-8e13-af6334856215"
					ObjectTypeName = "Group"
					Links = @{
						Members = @(
							@{
								ObjectId = "cbc86211-6ada-4803-b73f-8039cf56d8a2"
								ObjectTypeName = "User"
							}
							@{
								ObjectId = "2bc86211-6ada-4803-b73f-8039cf56d8a2"
								ObjectTypeName = "User"
							}
						)
					}
				}
			)
		}
	)
}

New-MgServicePrincipalSynchronizationJobOnDemand -ServicePrincipalId $servicePrincipalId -SynchronizationJobId $synchronizationJobId -BodyParameter $params

```