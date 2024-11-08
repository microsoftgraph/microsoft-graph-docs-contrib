---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.multi_tenant_organization_join_request_record import MultiTenantOrganizationJoinRequestRecord
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MultiTenantOrganizationJoinRequestRecord(
	added_by_tenant_id = "00000000-0000-0000-0000-000000000000",
)

result = await graph_client.tenant_relationships.multi_tenant_organization.join_request.patch(request_body)


```