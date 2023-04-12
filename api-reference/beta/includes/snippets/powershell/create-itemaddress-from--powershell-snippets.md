---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	displayName = "Home"
	detail = @{
		type = "home"
		postOfficeBox = $null
		street = "221B Baker Street"
		city = "London"
		state = $null
		countryOrRegion = "United Kingdom"
		postalCode = "E14 3TD"
	}
}

# A UPN can also be used as -UserId.
New-MgUserProfileAddress -UserId $userId -BodyParameter $params

```