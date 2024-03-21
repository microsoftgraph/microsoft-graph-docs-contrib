---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.apply_post_request_body import ApplyPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = ApplyPostRequestBody(
	tenant_id = "String",
	tenant_group_id = "String",
	management_template_id = "String",
)

result = await graph_client.tenant_relationships.managed_tenants.management_actions.by_management_action_id('managementAction-id').microsoft_graph_managed_tenants_apply.post(request_body)


```