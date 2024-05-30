---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.person_annual_event import PersonAnnualEvent
from msgraph_beta.generated.models.allowed_audiences import AllowedAudiences

graph_client = GraphServiceClient(credentials, scopes)

request_body = PersonAnnualEvent(
	allowed_audiences = AllowedAudiences.Contacts,
)

result = await graph_client.me.profile.anniversaries.by_person_annual_event_id('personAnnualEvent-id').patch(request_body)


```