---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.schema_extensions.schema_extensions_request_builder import SchemaExtensionsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = SchemaExtensionsRequestBuilder.SchemaExtensionsRequestBuilderGetQueryParameters(
		filter = "id eq 'graphlearn_test'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.schema_extensions.get(request_configuration = request_configuration)


```