---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.time_off_reason import TimeOffReason
from msgraph_beta.generated.models.time_off_reason_icon_type import TimeOffReasonIconType

graph_client = GraphServiceClient(credentials, scopes)

request_body = TimeOffReason(
	display_name = "Vacation",
	code = "VacationCode",
	icon_type = TimeOffReasonIconType.Plane,
	is_active = True,
)

result = await graph_client.teams.by_team_id('team-id').schedule.time_off_reasons.post(request_body)


```