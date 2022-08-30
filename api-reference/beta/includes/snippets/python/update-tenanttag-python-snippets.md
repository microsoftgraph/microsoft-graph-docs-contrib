---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.tenant_tag import TenantTag

graph_client = GraphServiceClient(credentials, scopes)

request_body = TenantTag(
	display_name = "Onboarding",
	description = "Tenants that we are currently onboarding",
)

result = await graph_client.tenant_relationships.managed_tenants.tenant_tags.by_tenant_tag_id('tenantTag-id').patch(request_body)


```