---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.communications.call_records.call_records_request_builder import CallRecordsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = CallRecordsRequestBuilder.CallRecordsRequestBuilderGetQueryParameters(
		filter = "participants_v2/any(p:p/id eq '821809f5-0000-0000-0000-3b5136c0e777')",
)

request_configuration = CallRecordsRequestBuilder.CallRecordsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.communications.call_records.get(request_configuration = request_configuration)


```