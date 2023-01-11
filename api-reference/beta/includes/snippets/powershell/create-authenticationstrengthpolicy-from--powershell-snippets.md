---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.authenticationStrengthPolicy"
	DisplayName = "Contoso authentication level"
	Description = "The only authentication level allowed to access our secret apps"
	AllowedCombinations = @(
		"password, hardwareOath"
		"password, sms"
	)
}

New-MgPolicyAuthenticationStrengthPolicy -BodyParameter $params

```