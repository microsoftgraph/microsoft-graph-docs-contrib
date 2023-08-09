---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UnassignTagPostRequestBody()
request_body.TenantIds(['String', ])




result = await client.tenant_relationships.managed_tenants.tenant_tags.by_tenant_tag_id('tenantTag-id').microsoft_graph_managed_tenant_unassign_tag.post(request_body = request_body)


```