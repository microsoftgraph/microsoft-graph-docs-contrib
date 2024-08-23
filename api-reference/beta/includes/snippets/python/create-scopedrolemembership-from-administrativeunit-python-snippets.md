---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.scoped_role_membership import ScopedRoleMembership
from msgraph_beta.generated.models.identity import Identity

graph_client = GraphServiceClient(credentials, scopes)

request_body = ScopedRoleMembership(
	role_id = "roleId-value",
	role_member_info = Identity(
		id = "id-value",
	),
)

result = await graph_client.administrative_units.by_administrative_unit_id('administrativeUnit-id').scoped_role_members.post(request_body)


```