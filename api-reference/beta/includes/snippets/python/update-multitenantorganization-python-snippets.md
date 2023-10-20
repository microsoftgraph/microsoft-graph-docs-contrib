---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = MultiTenantOrganization(
	display_name = "Contoso organization",
	description = "Multi-tenant organization between Contoso, Fabrikam, and Woodgrove Bank",
)

result = await graph_client.tenant_relationships.multi_tenant_organization.patch(body = request_body)


```