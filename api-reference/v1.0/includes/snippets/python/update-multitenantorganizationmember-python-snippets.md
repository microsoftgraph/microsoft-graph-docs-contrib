---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.multi_tenant_organization_member import MultiTenantOrganizationMember
from msgraph.generated.models.multi_tenant_organization_member_role import MultiTenantOrganizationMemberRole
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MultiTenantOrganizationMember(
	role = MultiTenantOrganizationMemberRole.Owner,
)

result = await graph_client.tenant_relationships.multi_tenant_organization.tenants.by_multi_tenant_organization_member_id('multiTenantOrganizationMember-id').patch(request_body)


```