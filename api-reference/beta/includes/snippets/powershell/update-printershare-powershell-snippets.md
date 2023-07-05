---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Devices.CloudPrint

$params = @{
	displayName = "ShareName"
	allowAllUsers = $true
	"printer@odata.bind" = "https://graph.microsoft.com/beta/print/printers/{id}"
}

Update-MgBetaPrintShare -PrinterShareId $printerShareId -BodyParameter $params

```