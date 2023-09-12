---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = ScopedRoleMembership(
	role_id = "roleId-value",
	role_member_info = Identity(
		id = "id-value",
	),
)

result = await graph_client.administrative_units.by_administrative_unit_id('administrativeUnit-id').scoped_role_members.post(body = request_body)


```