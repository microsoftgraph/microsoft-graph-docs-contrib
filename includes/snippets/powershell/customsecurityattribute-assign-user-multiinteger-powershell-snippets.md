---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	CustomSecurityAttributes = @{
		Engineering = @{
			"@odata.type" = "#Microsoft.DirectoryServices.CustomSecurityAttributeValue"
			"CostCenter@odata.type" = "#Collection(Int32)"
			CostCenter = @(
				
				
			)
		}
	}
}

Update-MgUser -UserId $userId -BodyParameter $params

```