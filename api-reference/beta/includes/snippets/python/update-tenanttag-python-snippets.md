---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TenantTag()
request_body.display_name = 'Onboarding'

request_body.description = 'Tenants that we are currently onboarding'




result = await client.tenant_relationships.managed_tenants.tenant_tags.by_tenant_tag_id('tenantTag-id').patch(request_body = request_body)


```