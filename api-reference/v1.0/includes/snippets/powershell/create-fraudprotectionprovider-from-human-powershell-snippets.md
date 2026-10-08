---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.humanSecurityFraudProtectionProvider"
	displayName = "HUMAN Security Sign-Up Protection"
	appId = "XXyy1XXXy"
	serverToken = "xxYYxxXXX1"
}

New-MgIdentityRiskPreventionFraudProtectionProvider -BodyParameter $params

```