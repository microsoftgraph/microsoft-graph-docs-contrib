---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

$params = @{
	"@odata.type" = "#microsoft.graph.directoryObject"
}

New-MgBetaUserSponsorByRef -UserId $userId -BodyParameter $params

```