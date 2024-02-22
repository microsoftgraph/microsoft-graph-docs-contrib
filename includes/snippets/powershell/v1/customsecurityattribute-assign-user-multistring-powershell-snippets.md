---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	customSecurityAttributes = @{
		Engineering = @{
			"@odata.type" = "#Microsoft.DirectoryServices.CustomSecurityAttributeValue"
			"Project@odata.type" = "#Collection(String)"
			Project = @(
				"Baker"
				"Cascade"
			)
		}
	}
}

Update-MgUser -UserId $userId -BodyParameter $params

```