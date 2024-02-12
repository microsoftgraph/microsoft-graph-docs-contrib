---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.get_member_groups_post_request_body import GetMemberGroupsPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = GetMemberGroupsPostRequestBody(
	security_enabled_only = False,
)

result = await graph_client.directory_objects.by_directory_object_id('directoryObject-id').get_member_groups.post(request_body)


```