---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.multi_tenant_organization_join_request_record import MultiTenantOrganizationJoinRequestRecord

graph_client = GraphServiceClient(credentials, scopes)

request_body = MultiTenantOrganizationJoinRequestRecord(
	added_by_tenant_id = "00000000-0000-0000-0000-000000000000",
)

result = await graph_client.tenant_relationships.multi_tenant_organization.join_request.patch(request_body)


```