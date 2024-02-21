---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.SchemaExtensions

$params = @{
	id = "graphLearnCourses"
	description = "Graph Learn training courses extensions"
	targetTypes = @(
		"user"
	)
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