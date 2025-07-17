---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.directory.custom_security_attribute_definitions.custom_security_attribute_definitions_request_builder import CustomSecurityAttributeDefinitionsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = CustomSecurityAttributeDefinitionsRequestBuilder.CustomSecurityAttributeDefinitionsRequestBuilderGetQueryParameters(
		filter = "attributeSet eq 'Engineering' and status eq 'Available' and type eq 'String'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.directory.custom_security_attribute_definitions.get(request_configuration = request_configuration)


```