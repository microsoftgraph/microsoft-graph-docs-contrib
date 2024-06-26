---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.directory.custom_security_attribute_definitions.custom_security_attribute_definitions_request_builder import CustomSecurityAttributeDefinitionsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = CustomSecurityAttributeDefinitionsRequestBuilder.CustomSecurityAttributeDefinitionsRequestBuilderGetQueryParameters(
		filter = "attributeSet eq 'Engineering' and status eq 'Available' and type eq 'String'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.directory.custom_security_attribute_definitions.get(request_configuration = request_configuration)


```