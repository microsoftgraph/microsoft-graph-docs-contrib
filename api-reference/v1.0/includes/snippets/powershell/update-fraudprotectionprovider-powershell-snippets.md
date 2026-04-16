---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.arkoseFraudProtectionProvider"
	displayName = "Arkose Sign-Up Protection Updated"
}

Update-MgIdentityRiskPreventionFraudProtectionProvider -FraudProtectionProviderId $fraudProtectionProviderId -BodyParameter $params

```