---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.app_role_assignment import AppRoleAssignment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AppRoleAssignment(
	principal_id = UUID("7679d9a4-2323-44cd-b5c2-673ec88d8b12"),
	resource_id = UUID("076e8b57-bac8-49d7-9396-e3449b685055"),
	app_role_id = UUID("00000000-0000-0000-0000-000000000000"),
)

result = await graph_client.groups.by_group_id('group-id').app_role_assignments.post(request_body)


```