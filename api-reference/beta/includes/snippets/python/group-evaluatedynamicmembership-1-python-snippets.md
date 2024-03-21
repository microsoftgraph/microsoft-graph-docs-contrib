---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.evaluate_dynamic_membership_post_request_body import EvaluateDynamicMembershipPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = EvaluateDynamicMembershipPostRequestBody(
	member_id = "319b41e8-d9e4-42f8-bdc9-741113f48b33",
)

result = await graph_client.groups.by_group_id('group-id').evaluate_dynamic_membership.post(request_body)


```