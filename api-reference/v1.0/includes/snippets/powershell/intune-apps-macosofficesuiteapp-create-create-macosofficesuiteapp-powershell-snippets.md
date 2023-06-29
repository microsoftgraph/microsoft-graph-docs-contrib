---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Devices.CorporateManagement

$params = @{
	"@odata.type" = "#microsoft.graph.macOSOfficeSuiteApp"
	displayName = "Display Name value"
	description = "Description value"
	publisher = "Publisher value"
	largeIcon = @{
		"@odata.type" = "microsoft.graph.mimeContent"
		type = "Type value"
		value = [System.Text.Encoding]::ASCII.GetBytes("dmFsdWU=")
	}
	isFeatured = $true
	privacyInformationUrl = "https://example.com/privacyInformationUrl/"
	informationUrl = "https://example.com/informationUrl/"
	owner = "Owner value"
	developer = "Developer value"
	notes = "Notes value"
	publishingState = "processing"
}

New-MgDeviceAppMgtMobileApp -BodyParameter $params

```