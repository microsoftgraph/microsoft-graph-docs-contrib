---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AppManagementPolicy(
	is_enabled = False,
)

result = await graph_client.policies.app_management_policies.by_app_management_policy_id('appManagementPolicy-id').patch(request_body)


```