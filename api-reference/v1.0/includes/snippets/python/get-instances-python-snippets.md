---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = InstancesRequestBuilder.InstancesRequestBuilderGetQueryParameters(
		startDateTime = "2019-04-08T09:00:00.0000000",
		endDateTime = "2019-04-30T09:00:00.0000000",
		select = ["subject","bodyPreview","seriesMasterId","type","recurrence","start","end"],
)

request_configuration = InstancesRequestBuilder.InstancesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.me.events.by_event_id('event-id').instances.get(request_configuration = request_configuration)


```