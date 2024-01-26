---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessReviewPolicy(
	is_group_owner_management_enabled = True,
)

result = await graph_client.identity_governance.access_reviews.policy.patch(request_body)


```