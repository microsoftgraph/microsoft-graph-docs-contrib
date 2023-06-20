---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Education

$params = @{
	displayName = "Fabrikam High School"
	description = "Magnate school for the arts. Los Angeles School District"
	externalSource = "String"
	principalEmail = "AmyR@fabrikam.com"
	principalName = "Amy Roebuck"
	externalPrincipalId = "14007"
	highestGrade = "12"
	lowestGrade = "9"
	schoolNumber = "10002"
	address = @{
		city = "Los Angeles"
		countryOrRegion = "United States"
		postalCode = "98055"
		state = "CA"
		street = "12345 Main St."
	}
	externalId = "10002"
	phone = "+1 (253) 555-0102"
}

New-MgEducationSchool -BodyParameter $params

```