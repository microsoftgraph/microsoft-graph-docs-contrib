---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.x509CertificateAuthenticationMethodConfiguration"
	Id = "X509Certificate"
	State = "enabled"
	CertificateUserBindings = @(
	)
	IncludeTargets = @(
	)
}

Update-MgPolicyAuthenticationMethodPolicyAuthenticationMethodConfiguration -AuthenticationMethodConfigurationId $authenticationMethodConfigurationId -BodyParameter $params

```