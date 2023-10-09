---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = GetMemberObjectsPostRequestBody(
	security_enabled_only = True,
)

result = await graph_client.me.get_member_objects.post(body = request_body)


```