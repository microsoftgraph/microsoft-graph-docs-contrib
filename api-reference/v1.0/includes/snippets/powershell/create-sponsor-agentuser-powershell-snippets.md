---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	"@odata.type" = "#microsoft.graph.directoryObject"
}

New-MgUserSponsorByRef -UserId $userId -BodyParameter $params

```