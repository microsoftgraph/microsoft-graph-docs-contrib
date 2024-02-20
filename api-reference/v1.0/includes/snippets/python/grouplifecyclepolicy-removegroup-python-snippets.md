---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.remove_group_post_request_body import RemoveGroupPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = RemoveGroupPostRequestBody(
	group_id = "ffffffff-ffff-ffff-ffff-ffffffffffff",
)

result = await graph_client.group_lifecycle_policies.by_group_lifecycle_policy_id('groupLifecyclePolicy-id').remove_group.post(request_body)


```