---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessReviewPolicy(
	is_group_owner_management_enabled = True,
)

result = await graph_client.policies.access_review_policy.patch(request_body)


```