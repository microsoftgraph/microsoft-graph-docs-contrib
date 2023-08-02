---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ApplyPostRequestBody()
request_body.tenant_id = 'String'

request_body.tenant_group_id = 'String'

request_body.management_template_id = 'String'




result = await client.tenant_relationships.managed_tenants.management_actions.by_management_action_id('managementAction-id').microsoft_graph_managed_tenant_apply.post(request_body = request_body)


```