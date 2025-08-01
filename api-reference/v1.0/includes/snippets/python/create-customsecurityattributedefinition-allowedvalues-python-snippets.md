---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.custom_security_attribute_definition import CustomSecurityAttributeDefinition
from msgraph.generated.models.allowed_value import AllowedValue
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CustomSecurityAttributeDefinition(
	attribute_set = "Engineering",
	description = "Active projects for user",
	is_collection = True,
	is_searchable = True,
	name = "Project",
	status = "Available",
	type = "String",
	use_pre_defined_values_only = True,
	allowed_values = [
		AllowedValue(
			id = "Alpine",
			is_active = True,
		),
		AllowedValue(
			id = "Baker",
			is_active = True,
		),
		AllowedValue(
			id = "Cascade",
			is_active = True,
		),
	],
)

result = await graph_client.directory.custom_security_attribute_definitions.post(request_body)


```