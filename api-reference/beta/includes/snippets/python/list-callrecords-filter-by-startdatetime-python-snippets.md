---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = CallRecordsRequestBuilder.CallRecordsRequestBuilderGetQueryParameters(
		filter = "startDateTime ge 2023-09-25T09:25:00Z and startDateTime lt 2023-09-25T09:30:00Z",
)

request_configuration = CallRecordsRequestBuilder.CallRecordsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.communications.call_records.get(request_configuration = request_configuration)


```