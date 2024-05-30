---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.app_role_assignment import AppRoleAssignment

graph_client = GraphServiceClient(credentials, scopes)

request_body = AppRoleAssignment(
	principal_id = UUID("cde330e5-2150-4c11-9c5b-14bfdc948c79"),
	resource_id = UUID("8e881353-1735-45af-af21-ee1344582a4d"),
	app_role_id = UUID("00000000-0000-0000-0000-000000000000"),
)

result = await graph_client.users.by_user_id('user-id').app_role_assignments.post(request_body)


```