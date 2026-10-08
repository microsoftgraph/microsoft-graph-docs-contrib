---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.arkoseFraudProtectionProvider"
	displayName = "Arkose Sign-Up Protection Updated"
}

Update-MgBetaIdentityRiskPreventionFraudProtectionProvider -FraudProtectionProviderId $fraudProtectionProviderId -BodyParameter $params

```