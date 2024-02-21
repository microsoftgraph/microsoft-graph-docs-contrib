---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.multi_tenant_organization import MultiTenantOrganization

graph_client = GraphServiceClient(credentials, scopes)

request_body = MultiTenantOrganization(
	display_name = "Contoso organization",
	description = "Multi-tenant organization between Contoso, Fabrikam, and Woodgrove Bank",
)

result = await graph_client.tenant_relationships.multi_tenant_organization.patch(request_body)


```