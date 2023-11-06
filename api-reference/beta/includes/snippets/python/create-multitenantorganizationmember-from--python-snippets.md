---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = MultiTenantOrganizationMember(
	tenant_id = "4a12efe6-aa14-4d03-8dff-88fc89e2e2ad",
	display_name = "Fabrikam",
)

result = await graph_client.tenant_relationships.multi_tenant_organization.tenants.post(request_body)


```