---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.audit_logs.sign_ins.sign_ins_request_builder import SignInsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = SignInsRequestBuilder.SignInsRequestBuilderGetQueryParameters(
		filter = "createdDateTime ge 2024-07-01T00:00:00Z and createdDateTime le 2024-07-14T23:59:59Z",
)

request_configuration = SignInsRequestBuilder.SignInsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.audit_logs.sign_ins.get(request_configuration = request_configuration)


```