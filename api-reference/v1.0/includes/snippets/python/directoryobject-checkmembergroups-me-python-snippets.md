---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.check_member_groups.check_member_groups_post_request_body import CheckMemberGroupsPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = CheckMemberGroupsPostRequestBody(
	group_ids = [
		"fee2c45b-915a-4a64b130f4eb9e75525e",
		"4fe90ae065a-478b9400e0a0e1cbd540",
	],
)

result = await graph_client.me.check_member_groups.post(request_body)


```