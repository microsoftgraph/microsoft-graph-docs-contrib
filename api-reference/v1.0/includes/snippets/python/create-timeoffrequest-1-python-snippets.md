---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.time_off_request import TimeOffRequest
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TimeOffRequest(
	sender_message = "Need a break",
	time_off_reason_id = "TOR_08c42f26-9b83-492c-bf52-f3609eb083e3",
	sender_user_id = "3f2504e0-4f89-11d3-9a0c-0305e82c3301",
	start_date_time = "2025-05-26T07:00:00Z",
	end_date_time = "2025-05-27T07:00:00Z",
)

result = await graph_client.teams.by_team_id('team-id').schedule.time_off_requests.post(request_body)


```