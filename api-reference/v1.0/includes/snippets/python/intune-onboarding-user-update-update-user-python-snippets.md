---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = User(
	odata_type = "#microsoft.graph.user",
	device_enrollment_limit = 5,
)

result = await graph_client.users.by_user_id('user-id').patch(request_body)


```