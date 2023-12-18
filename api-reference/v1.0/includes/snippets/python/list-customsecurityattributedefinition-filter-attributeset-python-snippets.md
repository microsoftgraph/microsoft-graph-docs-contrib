---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = CustomSecurityAttributeDefinitionsRequestBuilder.CustomSecurityAttributeDefinitionsRequestBuilderGetQueryParameters(
		filter = "attributeSet eq 'Engineering' and status eq 'Available' and type eq 'String'",
)

request_configuration = CustomSecurityAttributeDefinitionsRequestBuilder.CustomSecurityAttributeDefinitionsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.directory.custom_security_attribute_definitions.get(request_configuration = request_configuration)


```