---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.teams.item.schedule.shifts.shifts_request_builder import ShiftsRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = ShiftsRequestBuilder.ShiftsRequestBuilderGetQueryParameters(
		filter = "sharedShift/startDateTime ge 2019-03-11T00:00:00.000Z and sharedShift/endDateTime le 2019-03-18T00:00:00.000Z and draftShift/startDateTime ge 2019-03-11T00:00:00.000Z and draftShift/endDateTime le 2019-03-18T00:00:00.000Z",
)

request_configuration = ShiftsRequestBuilder.ShiftsRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.teams.by_team_id('team-id').schedule.shifts.get(request_configuration = request_configuration)


```