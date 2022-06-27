---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Devices.CloudPrint

$params = @{
	"@odata.id" = "https://graph.microsoft.com/beta/users/{id}"
}

New-MgPrintShareAllowedUserByRef -PrinterShareId $printerShareId -BodyParameter $params

```