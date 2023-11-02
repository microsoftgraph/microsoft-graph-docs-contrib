---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = CustomSecurityAttributeDefinition(
	additional_data = {
			"allowed_values@delta" : [
				(
					id = "Baker",
					is_active = False,
				),
				(
					id = "Skagit",
					is_active = True,
				),
			]
	}
)

request_configuration = CustomSecurityAttributeDefinitionRequestBuilder.CustomSecurityAttributeDefinitionRequestBuilderPatchRequestConfiguration(
headers = {
		'OData-Version' : "4.01",
}

)

result = await graph_client.directory.custom_security_attribute_definitions.by_custom_security_attribute_definition_id('customSecurityAttributeDefinition-id').patch(body = request_body, request_configuration = request_configuration)


```