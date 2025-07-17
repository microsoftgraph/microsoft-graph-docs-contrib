---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.schema_extension import SchemaExtension
from msgraph_beta.generated.models.extension_schema_property import ExtensionSchemaProperty
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SchemaExtension(
	id = "graphlearn_courses",
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