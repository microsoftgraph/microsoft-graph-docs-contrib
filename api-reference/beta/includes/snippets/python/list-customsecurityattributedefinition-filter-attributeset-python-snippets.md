---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = CustomSecurityAttributeDefinitionsRequestBuilder.CustomSecurityAttributeDefinitionsRequestBuilderGetQueryParameters(
		filter = "attributeSet eq 'Engineering' and status eq 'Available' and type eq 'String'",
)

request_configuration = CustomSecurityAttributeDefinitionsRequestBuilder.CustomSecurityAttributeDefinitionsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.directory.custom_security_attribute_definitions.get(request_configuration = request_configuration)


```