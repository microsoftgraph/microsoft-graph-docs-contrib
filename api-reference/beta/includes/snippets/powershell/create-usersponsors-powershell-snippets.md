---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

$params = @{
	"@odata.id" = "https://graph.microsoft.com/beta/users/{user-id}"
}

New-MgBetaUserSponsorByRef -UserId $userId -BodyParameter $params

```