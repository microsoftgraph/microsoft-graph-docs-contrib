---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Devices.CloudPrint

$params = @{
	displayName = "PrinterShare Name"
	"printer@odata.bind" = "https://graph.microsoft.com/v1.0/print/printers/{printerId}"
	allowAllUsers = $false
}

Update-MgPrintShare -PrinterShareId $printerShareId -BodyParameter $params

```