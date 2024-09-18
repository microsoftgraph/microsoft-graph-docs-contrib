---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.teams.item.schedule.times_off.times_off_request_builder import TimesOffRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

query_params = TimesOffRequestBuilder.TimesOffRequestBuilderGetQueryParameters(
		filter = "sharedTimeOff/startDateTime ge 2019-03-11T00:00:00.000Z and sharedTimeOff/endDateTime le 2019-03-18T00:00:00.000Z and draftTimeOff/startDateTime ge 2019-03-11T00:00:00.000Z and draftTimeOff/endDateTime le 2019-03-18T00:00:00.000Z",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.teams.by_team_id('team-id').schedule.times_off.get(request_configuration = request_configuration)


```