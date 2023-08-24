---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	customSecurityAttributes = @{
		Engineering = @{
			"@odata.type" = "#Microsoft.DirectoryServices.CustomSecurityAttributeValue"
			"NumVendors@odata.type" = "#Int32"
			NumVendors = 
		}
	}
}

Update-MgUser -UserId $userId -BodyParameter $params

```