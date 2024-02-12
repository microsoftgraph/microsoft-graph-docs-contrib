---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.communications.callRecords.item.call_record_item_request_builder import CallRecordItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = CallRecordItemRequestBuilder.CallRecordItemRequestBuilderGetQueryParameters(
		expand = ["participants_v2"],
)

request_configuration = CallRecordItemRequestBuilder.CallRecordItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.communications.call_records.by_call_record_id('callRecord-id').get(request_configuration = request_configuration)


```