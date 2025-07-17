---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.multi_tenant_organization_member import MultiTenantOrganizationMember
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MultiTenantOrganizationMember(
	tenant_id = "4a12efe6-aa14-4d03-8dff-88fc89e2e2ad",
	display_name = "Fabrikam",
)

result = await graph_client.tenant_relationships.multi_tenant_organization.tenants.post(request_body)


```