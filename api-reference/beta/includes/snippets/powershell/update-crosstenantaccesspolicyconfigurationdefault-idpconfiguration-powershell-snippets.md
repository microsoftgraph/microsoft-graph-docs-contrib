---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	invitationRedemptionIdentityProviderConfiguration = @{
		primaryIdentityProviderPrecedenceOrder = @(
		"externalFederation"
	"azureActiveDirectory"
"socialIdentityProviders"
)
fallbackIdentityProvider = "defaultConfiguredIdp"
}
}

Update-MgBetaPolicyCrossTenantAccessPolicyDefault -BodyParameter $params

```