---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.tenantrelationships.managedtenants.tenanttags.item.microsoft_graph_managed_tenants_assign_tag.assign_tag_post_request_body import AssignTagPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AssignTagPostRequestBody(
	tenant_ids = [
		"String",
	],
)

result = await graph_client.tenant_relationships.managed_tenants.tenant_tags.by_tenant_tag_id('tenantTag-id').microsoft_graph_managed_tenants_assign_tag.post(request_body)


```