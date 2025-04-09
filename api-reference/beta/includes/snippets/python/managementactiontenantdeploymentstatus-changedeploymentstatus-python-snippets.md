---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.tenantrelationships.managedtenants.managementactiontenantdeploymentstatuses.microsoft_graph_managed_tenants_change_deployment_status.change_deployment_status_post_request_body import ChangeDeploymentStatusPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ChangeDeploymentStatusPostRequestBody(
	tenant_group_id = "String",
	tenant_id = "String",
	management_action_id = "String",
	management_template_id = "String",
	status = "String",
)

result = await graph_client.tenant_relationships.managed_tenants.management_action_tenant_deployment_statuses.microsoft_graph_managed_tenants_change_deployment_status.post(request_body)


```