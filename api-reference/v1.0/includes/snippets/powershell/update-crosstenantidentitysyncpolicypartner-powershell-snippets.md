---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	userSyncInbound = @{
		isSyncAllowed = $true
	}
}

Update-MgPolicyCrossTenantAccessPolicyPartnerIdentitySynchronization -CrossTenantAccessPolicyConfigurationPartnerTenantId $crossTenantAccessPolicyConfigurationPartnerTenantId -BodyParameter $params

```