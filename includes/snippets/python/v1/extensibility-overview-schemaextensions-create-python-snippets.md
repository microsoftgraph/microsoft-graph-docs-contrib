---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = SchemaExtension(
	id = "graphLearnCourses",
	description = "Graph Learn training courses extensions",
	target_types = [
		"user",
	],
	properties = [
		ExtensionSchemaProperty(
			name = "courseId",
			type = "Integer",
		),
		ExtensionSchemaProperty(
			name = "courseName",
			type = "String",
		),
		ExtensionSchemaProperty(
			name = "courseType",
			type = "String",
		),
	],
)

result = await graph_client.schema_extensions.post(request_body)


```