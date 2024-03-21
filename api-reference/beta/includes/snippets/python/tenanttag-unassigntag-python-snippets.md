---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.unassign_tag_post_request_body import UnassignTagPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = UnassignTagPostRequestBody(
	tenant_ids = [
		"String",
	],
)

result = await graph_client.tenant_relationships.managed_tenants.tenant_tags.by_tenant_tag_id('tenantTag-id').microsoft_graph_managed_tenants_unassign_tag.post(request_body)


```