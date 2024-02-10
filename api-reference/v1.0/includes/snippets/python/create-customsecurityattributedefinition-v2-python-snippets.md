---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.custom_security_attribute_definition import CustomSecurityAttributeDefinition

graph_client = GraphServiceClient(credentials, scopes)

request_body = CustomSecurityAttributeDefinition(
	attribute_set = "Engineering",
	description = "Active projects for user",
	is_collection = True,
	is_searchable = True,
	name = "Project",
	status = "Available",
	type = "String",
	use_pre_defined_values_only = True,
)

result = await graph_client.directory.custom_security_attribute_definitions.post(request_body)


```