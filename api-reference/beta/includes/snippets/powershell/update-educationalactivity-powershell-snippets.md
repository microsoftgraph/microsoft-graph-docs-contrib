---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	Institution = @{
		Location = @{
			Type = "business"
			PostOfficeBox = $null
			Street = "12000 E Prospect Rd"
			City = "Fort Collins"
			State = "Colorado"
			CountryOrRegion = "USA"
			PostalCode = "80525"
		}
	}
}

Update-MgUserProfileEducationalActivity -UserId $userId -EducationalActivityId $educationalActivityId -BodyParameter $params

```