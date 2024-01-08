---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	"@odata.type" = "#microsoft.graph.user"
	deviceEnrollmentLimit = 5
}

Update-MgUser -UserId $userId -BodyParameter $params

```