---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Search

$params = @{
	DisplayName = "Rostering source"
	UserMatchingSettings = @(
		@{
			MatchTarget = @{
				Code = "userPrincipalName"
			}
			PriorityOrder = 0
			"RoleGroup@odata.bind" = "https://graph.microsoft.com/beta/external/industryData/roleGroups/staff"
			SourceIdentifier = @{
				Code = "username"
			}
		}
		@{
			MatchTarget = @{
				Code = "userPrincipalName"
			}
			PriorityOrder = 1
			"RoleGroup@odata.bind" = "https://graph.microsoft.com/beta/external/industryData/roleGroups('students')"
			SourceIdentifier = @{
				Code = "username"
			}
		}
	)
}

New-MgExternalIndustryDataSourceSystem -BodyParameter $params

```