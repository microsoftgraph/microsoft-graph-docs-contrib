---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = GetMemberGroupsPostRequestBody(
	security_enabled_only = True,
)

result = await graph_client.me.get_member_groups.post(request_body)


```