---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = TenantTag(
	display_name = "Onboarding",
	description = "Tenants that we are currently onboarding",
)

result = await graph_client.tenant_relationships.managed_tenants.tenant_tags.by_tenant_tag_id('tenantTag-id').patch(request_body)


```