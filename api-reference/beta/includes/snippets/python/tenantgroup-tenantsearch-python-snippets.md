---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = TenantSearchPostRequestBody(
	tenant_id = "String",
)

result = await graph_client.tenant_relationships.managed_tenants.tenant_groups.microsoft_graph_managed_tenant_tenant_search.post(body = request_body)


```