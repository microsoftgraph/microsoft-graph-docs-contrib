---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.custom_security_attribute_definition import CustomSecurityAttributeDefinition

graph_client = GraphServiceClient(credentials, scopes)

request_body = CustomSecurityAttributeDefinition(
	attribute_set = "Engineering",
	description = "Target completion date",
	is_collection = False,
	is_searchable = True,
	name = "ProjectDate",
	status = "Available",
	type = "String",
	use_pre_defined_values_only = False,
)

result = await graph_client.directory.custom_security_attribute_definitions.post(request_body)


```