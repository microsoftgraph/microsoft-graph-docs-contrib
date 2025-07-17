---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.cross_tenant_access_policy import CrossTenantAccessPolicy
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CrossTenantAccessPolicy(
	allowed_cloud_endpoints = [
		"microsoftonline.us",
		"partner.microsoftonline.cn",
	],
)

result = await graph_client.policies.cross_tenant_access_policy.patch(request_body)


```