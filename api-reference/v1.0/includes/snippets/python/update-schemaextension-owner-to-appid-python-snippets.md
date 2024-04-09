---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.schema_extension import SchemaExtension
from msgraph.generated.models.extension_schema_property import ExtensionSchemaProperty

graph_client = GraphServiceClient(credentials, scopes)

request_body = SchemaExtension(
	owner = "ef4cb9a8-97c3-4ca7-854b-5cb5ced376fa",
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
		ExtensionSchemaProperty(
			name = "courseSupervisors",
			type = "String",
		),
	],
)

result = await graph_client.schema_extensions.by_schema_extension_id('schemaExtension-id').patch(request_body)


```