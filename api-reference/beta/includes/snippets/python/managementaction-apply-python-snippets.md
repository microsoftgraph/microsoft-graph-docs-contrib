---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = ApplyPostRequestBody(
	tenant_id = "String",
	tenant_group_id = "String",
	management_template_id = "String",
)

result = await graph_client.tenant_relationships.managed_tenants.management_actions.by_management_action_id('managementAction-id').microsoft_graph_managed_tenant_apply.post(body = request_body)


```