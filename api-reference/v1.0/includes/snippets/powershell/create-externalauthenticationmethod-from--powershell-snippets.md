---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.externalAuthenticationMethod"
	configurationId = "26310fee-860b-4eab-8749-ab730dcf335e"
	displayName = "Adatum"
}

New-MgUserAuthenticationExternalAuthenticationMethod -UserId $userId -BodyParameter $params

```