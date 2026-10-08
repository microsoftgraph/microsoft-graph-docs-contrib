---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	m365CollaborationInbound = @{
		users = @{
			accessType = "allowed"
			targets = @(
				@{
					target = "AllUsers"
					targetType = "user"
				}
			)
		}
	}
}

Update-MgPolicyCrossTenantAccessPolicyPartner -CrossTenantAccessPolicyConfigurationPartnerTenantId $crossTenantAccessPolicyConfigurationPartnerTenantId -BodyParameter $params

```