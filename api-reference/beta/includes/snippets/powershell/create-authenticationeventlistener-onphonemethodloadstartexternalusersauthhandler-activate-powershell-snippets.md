---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.onPhoneMethodLoadStartListener"
	conditions = @{
		applications = @{
			includeApplications = @(
			"3dfff01b-0afb-4a07-967f-d1ccbd81102a"
		)
	}
}
priority = 500
handler = @{
	"@odata.type" = "#microsoft.graph.onPhoneMethodLoadStartExternalUsersAuthHandler"
	smsOptions = @{
		includeAdditionalRegions = @(
		
	
)
excludeRegions = @(
)
}
}
}

New-MgBetaIdentityAuthenticationEventListener -BodyParameter $params

```