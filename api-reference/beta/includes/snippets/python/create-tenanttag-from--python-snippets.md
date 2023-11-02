---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = TenantTag(
	display_name = "Support",
	description = "Tenants that have purchased extended support",
)

result = await graph_client.tenant_relationships.managed_tenants.tenant_tags.post(request_body)


```