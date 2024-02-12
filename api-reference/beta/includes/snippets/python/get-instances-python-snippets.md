---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.events.item.instances.instances_request_builder import InstancesRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = InstancesRequestBuilder.InstancesRequestBuilderGetQueryParameters(
		start_date_time = "2019-04-08T09:00:00.0000000",
		end_date_time = "2019-04-30T09:00:00.0000000",
		select = ["subject","bodyPreview","seriesMasterId","type","recurrence","start","end"],
)

request_configuration = InstancesRequestBuilder.InstancesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.events.by_event_id('event-id').instances.get(request_configuration = request_configuration)


```