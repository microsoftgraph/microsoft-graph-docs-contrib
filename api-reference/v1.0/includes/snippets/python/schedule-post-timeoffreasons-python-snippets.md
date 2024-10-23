---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.time_off_reason import TimeOffReason
from msgraph.generated.models.time_off_reason_icon_type import TimeOffReasonIconType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TimeOffReason(
	display_name = "Vacation",
	icon_type = TimeOffReasonIconType.Plane,
	is_active = True,
)

result = await graph_client.teams.by_team_id('team-id').schedule.time_off_reasons.post(request_body)


```