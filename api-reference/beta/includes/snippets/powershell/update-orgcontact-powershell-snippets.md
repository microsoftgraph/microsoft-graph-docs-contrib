---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	BusinessPhones = @(
		"businessPhones-value"
	)
	City = "city-value"
	CompanyName = "companyName-value"
	Country = "country-value"
	Department = "department-value"
	DisplayName = "displayName-value"
}

Update-MgContact -OrgContactId $orgContactId -BodyParameter $params

```