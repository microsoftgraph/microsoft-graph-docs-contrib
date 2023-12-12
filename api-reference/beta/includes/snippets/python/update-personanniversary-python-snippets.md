---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = PersonAnnualEvent(
	allowed_audiences = AllowedAudiences.Contacts,
)

result = await graph_client.me.profile.anniversaries.by_person_annual_event_id('personAnnualEvent-id').patch(request_body)


```