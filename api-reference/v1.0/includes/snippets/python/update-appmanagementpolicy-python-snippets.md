---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = AppManagementPolicy(
	is_enabled = False,
)

result = await graph_client.policies.app_management_policies.by_app_management_policy_id('appManagementPolicy-id').patch(request_body)


```