---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.schema_extension import SchemaExtension
from msgraph_beta.generated.models.extension_schema_property import ExtensionSchemaProperty

graph_client = GraphServiceClient(credentials, scopes)

request_body = SchemaExtension(
	id = "courses",
	description = "Graph Learn training courses extensions",
	target_types = [
		"Group",
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