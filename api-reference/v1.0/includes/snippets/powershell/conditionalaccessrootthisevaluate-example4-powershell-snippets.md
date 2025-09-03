---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	signInIdentity = @{
		"@odata.type" = "#microsoft.graph.servicePrincipalSignIn"
		servicePrincipalId = "c65b94a5-0049-439a-a6fd-bce307077730"
	}
	signInContext = @{
		"@odata.type" = "#microsoft.graph.applicationContext"
		includeApplications = @(
		"00000003-0000-0ff1-ce00-000000000000"
	)
}
signInConditions = @{
	servicePrincipalRiskLevel = "high"
	country = "CA"
	ipAddress = "40.77.182.32"
}
appliedPoliciesOnly = $true
}

Test-MgIdentityConditionalAccess -BodyParameter $params

```