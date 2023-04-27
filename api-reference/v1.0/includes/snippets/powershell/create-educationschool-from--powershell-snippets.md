---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Education

$params = @{
	"@odata.type" = "#microsoft.graph.educationSchool"
	displayName = "String"
	description = "String"
	externalSource = "String"
	externalSourceDetail = "String"
	principalEmail = "String"
	principalName = "String"
	externalPrincipalId = "String"
	lowestGrade = "String"
	highestGrade = "String"
	schoolNumber = "String"
	externalId = "String"
	phone = "String"
	fax = "String"
	createdBy = @{
		"@odata.type" = "microsoft.graph.identitySet"
	}
	address = @{
		"@odata.type" = "microsoft.graph.physicalAddress"
	}
}

New-MgEducationSchool -BodyParameter $params

```