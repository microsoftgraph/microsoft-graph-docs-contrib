---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.get_member_objects.get_member_objects_post_request_body import GetMemberObjectsPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = GetMemberObjectsPostRequestBody(
	security_enabled_only = True,
)

result = await graph_client.me.get_member_objects.post(request_body)


```