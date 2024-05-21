---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.directory.custom_security_attribute_definitions.custom_security_attribute_definitions_request_builder import CustomSecurityAttributeDefinitionsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = CustomSecurityAttributeDefinitionsRequestBuilder.CustomSecurityAttributeDefinitionsRequestBuilderGetQueryParameters(
		filter = "name eq 'Project' and status eq 'Available'",
)

request_configuration = CustomSecurityAttributeDefinitionsRequestBuilder.CustomSecurityAttributeDefinitionsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.directory.custom_security_attribute_definitions.get(request_configuration = request_configuration)


```