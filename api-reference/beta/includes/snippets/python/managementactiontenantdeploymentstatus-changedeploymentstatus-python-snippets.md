---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ChangeDeploymentStatusPostRequestBody()
request_body.tenant_group_id = 'String'

request_body.tenant_id = 'String'

request_body.management_action_id = 'String'

request_body.management_template_id = 'String'

request_body.status = 'String'




result = await client.tenant_relationships.managed_tenants.management_action_tenant_deployment_statuses.microsoft_graph_managed_tenant_change_deployment_status.post(request_body = request_body)


```