---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = CallRecordItemRequestBuilder.CallRecordItemRequestBuilderGetQueryParameters(
		expand = ["participants_v2"],
)

request_configuration = CallRecordItemRequestBuilder.CallRecordItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.communications.call_records.by_call_record_id('callRecord-id').get(request_configuration = request_configuration)


```