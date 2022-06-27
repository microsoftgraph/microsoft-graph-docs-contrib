---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	CustomSecurityAttributes = @{
		Engineering = @{
			"@odata.type" = "#Microsoft.DirectoryServices.CustomSecurityAttributeValue"
			ProjectDate = "2022-10-01"
		}
	}
}

Update-MgServicePrincipal -ServicePrincipalId $servicePrincipalId -BodyParameter $params

```