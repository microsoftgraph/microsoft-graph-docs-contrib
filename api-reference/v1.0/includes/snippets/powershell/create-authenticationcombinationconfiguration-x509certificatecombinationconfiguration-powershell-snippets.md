---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.x509CertificateCombinationConfiguration"
	allowedIssuerSkis = @(
	"9A4248C6AC8C2931AB2A86537818E92E7B6C97B6"
)
allowedPolicyOIDs = @(
)
appliesToCombinations = @(
"x509CertificateSingleFactor "
)
}

New-MgIdentityConditionalAccessAuthenticationStrengthPolicyCombinationConfiguration -AuthenticationStrengthPolicyId $authenticationStrengthPolicyId -BodyParameter $params

```