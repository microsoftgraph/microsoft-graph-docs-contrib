---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	tenantRestrictions = @{
		usersAndGroups = @{
			accessType = "allowed"
			targets = @(
				@{
					target = "AllUsers"
					targetType = "user"
				}
			)
		}
		applications = @{
			accessType = "allowed"
			targets = @(
				@{
					target = "Office365"
					targetType = "application"
				}
			)
		}
	}
}

Update-MgPolicyCrossTenantAccessPolicyPartner -CrossTenantAccessPolicyConfigurationPartnerTenantId $crossTenantAccessPolicyConfigurationPartnerTenantId -BodyParameter $params

```