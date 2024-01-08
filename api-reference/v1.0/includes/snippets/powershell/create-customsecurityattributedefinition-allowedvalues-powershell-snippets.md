---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	attributeSet = "Engineering"
	description = "Active projects for user"
	isCollection = $true
	isSearchable = $true
	name = "Project"
	status = "Available"
	type = "String"
	usePreDefinedValuesOnly = $true
	allowedValues = @(
		@{
			id = "Alpine"
			isActive = $true
		}
		@{
			id = "Baker"
			isActive = $true
		}
		@{
			id = "Cascade"
			isActive = $true
		}
	)
}

New-MgDirectoryCustomSecurityAttributeDefinition -BodyParameter $params

```