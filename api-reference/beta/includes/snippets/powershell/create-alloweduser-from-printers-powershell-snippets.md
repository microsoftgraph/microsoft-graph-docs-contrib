---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Devices.CloudPrint

$params = @{
	"@odata.id" = "https://graph.microsoft.com/beta/users/{id}"
}

New-MgBetaPrintShareAllowedUserByRef -PrinterShareId $printerShareId -BodyParameter $params

```