---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.grouplifecyclepolicies.item.add_group.add_group_post_request_body import AddGroupPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = AddGroupPostRequestBody(
	group_id = "ffffffff-ffff-ffff-ffff-ffffffffffff",
)

result = await graph_client.group_lifecycle_policies.by_group_lifecycle_policy_id('groupLifecyclePolicy-id').add_group.post(request_body)


```