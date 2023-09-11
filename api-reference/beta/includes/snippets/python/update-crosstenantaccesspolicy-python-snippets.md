---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = CrossTenantAccessPolicy(
	allowed_cloud_endpoints = [
		"microsoftonline.us",
		"partner.microsoftonline.cn",
	]
)

result = await graph_client.policies.cros_tenant_acces_policy.patch(body = request_body)


```