---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.person_annual_event import PersonAnnualEvent

graph_client = GraphServiceClient(credentials, scopes)

request_body = PersonAnnualEvent(
	allowed_audiences = AllowedAudiences.Contacts,
)

result = await graph_client.me.profile.anniversaries.by_person_annual_event_id('personAnnualEvent-id').patch(request_body)


```