---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.app_role_assignment import AppRoleAssignment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AppRoleAssignment(
	principal_id = UUID("cde330e5-2150-4c11-9c5b-14bfdc948c79"),
	resource_id = UUID("8e881353-1735-45af-af21-ee1344582a4d"),
	app_role_id = UUID("00000000-0000-0000-0000-000000000000"),
)

result = await graph_client.users.by_user_id('user-id').app_role_assignments.post(request_body)


```