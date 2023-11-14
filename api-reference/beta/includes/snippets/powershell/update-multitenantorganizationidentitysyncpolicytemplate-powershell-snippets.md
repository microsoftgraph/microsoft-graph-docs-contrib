---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	templateApplicationLevel = "newPartners,existingPartners"
	userSyncInbound = @{
		isSyncAllowed = $true
	}
}

Update-MgBetaPolicyCrossTenantAccessPolicyTemplateMultiTenantOrganizationIdentitySynchronization -BodyParameter $params

```