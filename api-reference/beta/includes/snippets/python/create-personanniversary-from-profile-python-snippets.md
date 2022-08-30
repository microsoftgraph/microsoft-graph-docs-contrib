---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.person_annual_event import PersonAnnualEvent
from msgraph_beta.generated.models.person_annual_event_type import PersonAnnualEventType

graph_client = GraphServiceClient(credentials, scopes)

request_body = PersonAnnualEvent(
	type = PersonAnnualEventType.Birthday,
	date = "1980-01-08",
)

result = await graph_client.me.profile.anniversaries.post(request_body)


```