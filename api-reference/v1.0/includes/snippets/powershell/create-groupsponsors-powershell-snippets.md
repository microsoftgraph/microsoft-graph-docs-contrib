---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	"@odata.id" = "https://graph.microsoft.com/v1.0/groups/{group-id}"
}

New-MgUserSponsorByRef -UserId $userId -BodyParameter $params

```