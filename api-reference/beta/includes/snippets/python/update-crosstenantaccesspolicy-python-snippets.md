---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = CrossTenantAccessPolicy(
	allowed_cloud_endpoints = [
		"microsoftonline.us",
		"partner.microsoftonline.cn",
	],
)

result = await graph_client.policies.cross_tenant_access_policy.patch(request_body)


```