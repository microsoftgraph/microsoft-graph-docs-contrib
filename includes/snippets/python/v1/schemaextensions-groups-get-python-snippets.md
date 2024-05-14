---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.schema_extensions.schema_extensions_request_builder import SchemaExtensionsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = SchemaExtensionsRequestBuilder.SchemaExtensionsRequestBuilderGetQueryParameters(
		filter = "id eq 'bellowscollege_courses'",
)

request_configuration = SchemaExtensionsRequestBuilder.SchemaExtensionsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.schema_extensions.get(request_configuration = request_configuration)


```