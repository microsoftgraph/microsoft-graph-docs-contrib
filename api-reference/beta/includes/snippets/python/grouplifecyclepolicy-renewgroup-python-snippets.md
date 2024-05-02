---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.grouplifecyclepolicies.renew_group.renew_group_post_request_body import RenewGroupPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = RenewGroupPostRequestBody(
	group_id = "ffffffff-ffff-ffff-ffff-ffffffffffff",
)

result = await graph_client.group_lifecycle_policies.renew_group.post(request_body)


```