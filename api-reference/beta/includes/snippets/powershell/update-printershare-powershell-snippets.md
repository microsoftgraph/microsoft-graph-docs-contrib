---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Devices.CloudPrint

$params = @{
	displayName = "ShareName"
	allowAllUsers = $true
	"printer@odata.bind" = "https://graph.microsoft.com/beta/print/printers/{id}"
}

Update-MgPrintShare -PrinterShareId $printerShareId -BodyParameter $params

```