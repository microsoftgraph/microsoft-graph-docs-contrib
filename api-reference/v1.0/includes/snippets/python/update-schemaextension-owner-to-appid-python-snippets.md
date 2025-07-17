---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.schema_extension import SchemaExtension
from msgraph.generated.models.extension_schema_property import ExtensionSchemaProperty
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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