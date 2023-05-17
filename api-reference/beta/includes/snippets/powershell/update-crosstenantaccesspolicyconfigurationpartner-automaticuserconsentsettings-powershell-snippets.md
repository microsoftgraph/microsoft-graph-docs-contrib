---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	automaticUserConsentSettings = @{
		inboundAllowed = $true
		outboundAllowed = $true
	}
}

Update-MgPolicyCrossTenantAccessPolicyPartner -CrossTenantAccessPolicyConfigurationPartnerTenantId $crossTenantAccessPolicyConfigurationPartnerTenantId -BodyParameter $params

```