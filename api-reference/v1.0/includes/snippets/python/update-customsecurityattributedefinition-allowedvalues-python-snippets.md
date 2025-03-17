---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.directory.custom_security_attribute_definitions.item.custom_security_attribute_definition_item_request_builder import CustomSecurityAttributeDefinitionItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph.generated.models.custom_security_attribute_definition import CustomSecurityAttributeDefinition
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CustomSecurityAttributeDefinition(
	additional_data = {
			"allowed_values@delta" : [
				{
						"id" : "Baker",
						"is_active" : False,
				},
				{
						"id" : "Skagit",
						"is_active" : True,
				},
			],
	}
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("OData-Version", "4.01")


result = await graph_client.directory.custom_security_attribute_definitions.by_custom_security_attribute_definition_id('customSecurityAttributeDefinition-id').patch(request_body, request_configuration = request_configuration)


```