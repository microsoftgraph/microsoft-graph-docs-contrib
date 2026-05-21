---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	verifiedIdUsageConfigurations = @(
		@{
			isEnabledForTestOnly = $false
			purpose = "recovery"
		}
	)
}

Update-MgIdentityVerifiedIdProfile -VerifiedIdProfileId $verifiedIdProfileId -BodyParameter $params

```