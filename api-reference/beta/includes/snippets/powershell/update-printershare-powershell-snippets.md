---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Devices.CloudPrint

$params = @{
	DisplayName = "ShareName"
	AllowAllUsers = $true
	"Printer@odata.bind" = "https://graph.microsoft.com/beta/print/printers/{id}"
}

Update-MgPrintShare -PrinterShareId $printerShareId -BodyParameter $params

```