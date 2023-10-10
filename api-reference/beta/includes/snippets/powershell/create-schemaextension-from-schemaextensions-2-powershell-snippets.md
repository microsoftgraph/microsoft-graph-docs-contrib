---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.SchemaExtensions

$params = @{
	id = "courses"
	description = "Graph Learn training courses extensions"
	targetTypes = @(
		"Group"
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

New-MgBetaSchemaExtension -BodyParameter $params

```