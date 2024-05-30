---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Devices.CloudPrint

$params = @{
	properties = @{
		documentName = "TestFile.pdf"
		contentType = "application/pdf"
		size = 4533322
	}
}

New-MgPrintPrinterJobDocumentUploadSession -PrinterId $printerId -PrintJobId $printJobId -PrintDocumentId $printDocumentId -BodyParameter $params

```