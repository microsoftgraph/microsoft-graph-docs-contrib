---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = CallRecordRequestBuilder.CallRecordRequestBuilderGetQueryParameters(
		expand = ["sessions($expand=segments)"],
)

request_configuration = CallRecordRequestBuilder.CallRecordRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.communications.call_records.by_call_record_id('callRecord-id').get(request_configuration = request_configuration)


```