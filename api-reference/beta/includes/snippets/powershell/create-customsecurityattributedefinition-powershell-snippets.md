---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	AttributeSet = "Engineering"
	Description = "Target completion date"
	IsCollection = $false
	IsSearchable = $true
	Name = "ProjectDate"
	Status = "Available"
	Type = "String"
	UsePreDefinedValuesOnly = $false
}

New-MgDirectoryCustomSecurityAttributeDefinition -BodyParameter $params

```