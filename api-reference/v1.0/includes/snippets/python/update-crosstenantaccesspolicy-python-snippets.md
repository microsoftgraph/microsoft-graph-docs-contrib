---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = CrossTenantAccessPolicy(
	allowed_cloud_endpoints = [
		"microsoftonline.us",
	],
)

result = await graph_client.policies.cross_tenant_access_policy.patch(request_body)


```