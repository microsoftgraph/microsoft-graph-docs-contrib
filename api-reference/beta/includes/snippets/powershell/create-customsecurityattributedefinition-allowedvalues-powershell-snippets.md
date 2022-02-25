---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	AttributeSet = "Engineering"
	Description = "Active projects for user"
	IsCollection = $true
	IsSearchable = $true
	Name = "Project"
	Status = "Available"
	Type = "String"
	UsePreDefinedValuesOnly = $true
	AllowedValues = @(
		@{
			Id = "Alpine"
			IsActive = $true
		}
		@{
			Id = "Baker"
			IsActive = $true
		}
		@{
			Id = "Cascade"
			IsActive = $true
		}
	)
}

New-MgDirectoryCustomSecurityAttributeDefinition -BodyParameter $params

```