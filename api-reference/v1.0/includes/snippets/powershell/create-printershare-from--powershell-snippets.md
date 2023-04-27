---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Devices.CloudPrint

$params = @{
	displayName = "ShareName"
	allowAllUsers = $false
	"printer@odata.bind" = "https://graph.microsoft.com/v1.0/print/printers/{printerId}"
}

New-MgPrintShare -BodyParameter $params

```