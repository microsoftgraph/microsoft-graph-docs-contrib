---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = PersonAnnualEvent(
	type = PersonAnnualEventType.Birthday,
	date = "1980-01-08",
)

result = await graph_client.me.profile.anniversaries.post(request_body)


```