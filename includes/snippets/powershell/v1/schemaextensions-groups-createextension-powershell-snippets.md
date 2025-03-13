---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.SchemaExtensions

$params = @{
	id = "bellowscollege_courses"
	description = "Bellows College training courses extensions"
	targetTypes = @(
	"Group"
)
owner = "d1e6f196-fca3-48ad-8cd3-1a98e3bd46d2"
properties = @(
	@{
		name = "courseId"
		type = "Integer"
	}
	@{
		name = "courseName"
		type = "String"
	}
	@{
		name = "courseType"
		type = "String"
	}
)
}

New-MgSchemaExtension -BodyParameter $params

```