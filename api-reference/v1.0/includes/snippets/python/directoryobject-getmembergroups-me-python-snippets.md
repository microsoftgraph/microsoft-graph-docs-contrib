---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.get_member_groups.get_member_groups_post_request_body import GetMemberGroupsPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = GetMemberGroupsPostRequestBody(
	security_enabled_only = True,
)

result = await graph_client.me.get_member_groups.post(request_body)


```