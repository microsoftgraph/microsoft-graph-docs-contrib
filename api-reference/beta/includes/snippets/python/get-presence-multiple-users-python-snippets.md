---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = GetPresencesByUserIdPostRequestBody(
	ids = [
		"fa8bf3dc-eca7-46b7-bad1-db199b62afc3",
		"66825e03-7ef5-42da-9069-724602c31f6b",
	],
)

result = await graph_client.communications.get_presences_by_user_id.post(request_body)


```