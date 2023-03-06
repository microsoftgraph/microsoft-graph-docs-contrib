---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.SchemaExtensions

$params = @{
	Id = "graphlearn_courses"
	Description = "Graph Learn training courses extensions"
	TargetTypes = @(
		"Group"
	)
	Properties = @(
		@{
			Name = "courseId"
			Type = "Integer"
		}
		@{
			Name = "courseName"
			Type = "String"
		}
		@{
			Name = "courseType"
			Type = "String"
		}
	)
}

New-MgSchemaExtension -BodyParameter $params

```