---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.fido2AuthenticationMethodConfiguration"
	State = "enabled"
	IsAttestationEnforced = "true"
}

Update-MgPolicyAuthenticationMethodPolicyAuthenticationMethodConfiguration -AuthenticationMethodConfigurationId $authenticationMethodConfigurationId -BodyParameter $params

```