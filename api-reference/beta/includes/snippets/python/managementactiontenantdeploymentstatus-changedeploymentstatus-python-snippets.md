---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.change_deployment_status_post_request_body import ChangeDeploymentStatusPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = ChangeDeploymentStatusPostRequestBody(
	tenant_group_id = "String",
	tenant_id = "String",
	management_action_id = "String",
	management_template_id = "String",
	status = "String",
)

result = await graph_client.tenant_relationships.managed_tenants.management_action_tenant_deployment_statuses.microsoft_graph_managed_tenants_change_deployment_status.post(request_body)


```