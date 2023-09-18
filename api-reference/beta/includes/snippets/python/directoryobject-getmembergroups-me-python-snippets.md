---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = GetMemberGroupsPostRequestBody(
	security_enabled_only = True,
)

result = await graph_client.me.get_member_groups.post(body = request_body)


```