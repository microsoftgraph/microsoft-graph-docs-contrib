---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.cross_tenant_access_policy import CrossTenantAccessPolicy

graph_client = GraphServiceClient(credentials, scopes)

request_body = CrossTenantAccessPolicy(
	allowed_cloud_endpoints = [
		"microsoftonline.us",
		"partner.microsoftonline.cn",
	],
)

result = await graph_client.policies.cross_tenant_access_policy.patch(request_body)


```