---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.app_role_assignment import AppRoleAssignment

graph_client = GraphServiceClient(credentials, scopes)

request_body = AppRoleAssignment(
	principal_id = UUID("33ad69f9-da99-4bed-acd0-3f24235cb296"),
	resource_id = UUID("9028d19c-26a9-4809-8e3f-20ff73e2d75e"),
	app_role_id = UUID("ef7437e6-4f94-4a0a-a110-a439eb2aa8f7"),
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').app_role_assigned_to.post(request_body)


```