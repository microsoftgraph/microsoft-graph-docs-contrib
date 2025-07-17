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
	id = "bellowscollege_courses",
	description = "Bellows College training courses extensions",
	target_types = [
		"Group",
	],
	owner = "d1e6f196-fca3-48ad-8cd3-1a98e3bd46d2",
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