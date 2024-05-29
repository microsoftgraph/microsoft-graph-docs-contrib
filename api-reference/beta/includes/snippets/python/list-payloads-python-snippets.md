---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.security.attack_simulation.payloads.payloads_request_builder import PayloadsRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = PayloadsRequestBuilder.PayloadsRequestBuilderGetQueryParameters(
		filter = "source eq 'Tenant'",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.security.attack_simulation.payloads.get(request_configuration = request_configuration)


```