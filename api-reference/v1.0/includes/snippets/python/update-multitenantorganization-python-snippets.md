---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.multi_tenant_organization import MultiTenantOrganization
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MultiTenantOrganization(
	display_name = "Contoso organization",
	description = "Multitenant organization between Contoso, Fabrikam, and Woodgrove Bank",
)

result = await graph_client.tenant_relationships.multi_tenant_organization.patch(request_body)


```