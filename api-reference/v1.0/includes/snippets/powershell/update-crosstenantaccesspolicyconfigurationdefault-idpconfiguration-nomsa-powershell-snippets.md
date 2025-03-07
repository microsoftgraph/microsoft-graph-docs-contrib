---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	invitationRedemptionIdentityProviderConfiguration = @{
		primaryIdentityProviderPrecedenceOrder = @(
		"externalFederation"
	"azureActiveDirectory"
"socialIdentityProviders"
)
fallbackIdentityProvider = "emailOneTimePasscode"
}
}

Update-MgPolicyCrossTenantAccessPolicyDefault -BodyParameter $params

```