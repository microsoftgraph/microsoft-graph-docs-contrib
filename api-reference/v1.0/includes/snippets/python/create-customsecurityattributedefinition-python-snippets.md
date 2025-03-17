---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.custom_security_attribute_definition import CustomSecurityAttributeDefinition
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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