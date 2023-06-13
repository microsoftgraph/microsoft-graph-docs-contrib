---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = OnlineMeetingsRequestBuilder.OnlineMeetingsRequestBuilderGetQueryParameters(
		filter = "VideoTeleconferenceId eq '123456789'",
)

request_configuration = OnlineMeetingsRequestBuilder.OnlineMeetingsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.communications.online_meetings.get(request_configuration = request_configuration)


```