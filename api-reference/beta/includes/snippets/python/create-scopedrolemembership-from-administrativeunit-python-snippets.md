---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.scoped_role_membership import ScopedRoleMembership
from msgraph_beta.generated.models.identity import Identity
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ScopedRoleMembership(
	role_id = "roleId-value",
	role_member_info = Identity(
		id = "id-value",
	),
)

result = await graph_client.administrative_units.by_administrative_unit_id('administrativeUnit-id').scoped_role_members.post(request_body)


```