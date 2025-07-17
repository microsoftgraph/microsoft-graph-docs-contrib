---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.get_member_groups.get_member_groups_post_request_body import GetMemberGroupsPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GetMemberGroupsPostRequestBody(
	security_enabled_only = True,
)

result = await graph_client.me.get_member_groups.post(request_body)


```