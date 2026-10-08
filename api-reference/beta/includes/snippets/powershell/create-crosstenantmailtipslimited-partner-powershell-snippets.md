---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.crossTenantMailTipsLimited"
	inboundAccess = @{
		isAllowed = $false
		resourceScopes = @{
			included = @(
				@{
					resourceId = "ad4fc698-74dc-4f62-9e71-ba9b591e8e74"
					resourceType = "group"
				}
			)
			excluded = @(
			)
		}
	}
}

New-MgBetaPolicyCrossTenantAccessPolicyPartnerM365Capability -CrossTenantAccessPolicyConfigurationPartnerTenantId $crossTenantAccessPolicyConfigurationPartnerTenantId -BodyParameter $params

```