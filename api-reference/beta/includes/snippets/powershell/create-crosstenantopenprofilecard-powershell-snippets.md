---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.crossTenantOpenProfileCard"
	inboundAccess = @{
		isAllowed = $true
		resourceScopes = @{
			included = @(
				@{
					resourceId = "ad4fc698-74dc-4f62-9e71-ba9b591e8e74"
					resourceType = "group"
				}
			)
			excluded = @(
				@{
					resourceId = "ad4fc698-74dc-4f62-9e71-ba9b591e8e00"
					resourceType = "group"
				}
			)
		}
	}
}

New-MgBetaPolicyCrossTenantAccessPolicyDefaultM365Capability -BodyParameter $params

```