---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	device = @{
		id = "aad49556-####-####-####-############"
	}
}

# A UPN can also be used as -UserId.
New-MgBetaUserAuthenticationHardwareOathMethod -UserId $userId -BodyParameter $params

```