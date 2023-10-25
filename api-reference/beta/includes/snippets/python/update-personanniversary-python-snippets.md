---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = PersonAnnualEvent(
	allowed_audiences = AllowedAudiences.Contacts,
)

result = await graph_client.me.profile.anniversaries.by_anniversarie_id('personAnnualEvent-id').patch(body = request_body)


```