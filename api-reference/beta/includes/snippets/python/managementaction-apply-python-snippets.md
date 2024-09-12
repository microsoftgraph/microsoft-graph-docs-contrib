---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.tenantrelationships.managedtenants.managementactions.item.microsoft_graph_managed_tenants_apply.apply_post_request_body import ApplyPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ApplyPostRequestBody(
	tenant_id = "String",
	tenant_group_id = "String",
	management_template_id = "String",
)

result = await graph_client.tenant_relationships.managed_tenants.management_actions.by_management_action_id('managementAction-id').microsoft_graph_managed_tenants_apply.post(request_body)


```