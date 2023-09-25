---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.x509CertificateAuthenticationMethodConfiguration"
	id = "X509Certificate"
	state = "enabled"
	certificateUserBindings = @(
	)
	includeTargets = @(
	)
}

Update-MgBetaPolicyAuthenticationMethodPolicyAuthenticationMethodConfiguration -AuthenticationMethodConfigurationId $authenticationMethodConfigurationId -BodyParameter $params

```