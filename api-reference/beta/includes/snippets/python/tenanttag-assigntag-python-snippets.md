---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.tenantrelationships.managedtenants.tenanttags.item.microsoft_graph_managed_tenants_assign_tag.assign_tag_post_request_body import AssignTagPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = AssignTagPostRequestBody(
	tenant_ids = [
		"String",
	],
)

result = await graph_client.tenant_relationships.managed_tenants.tenant_tags.by_tenant_tag_id('tenantTag-id').microsoft_graph_managed_tenants_assign_tag.post(request_body)


```