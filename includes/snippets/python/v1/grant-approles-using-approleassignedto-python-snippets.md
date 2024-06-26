---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.app_role_assignment import AppRoleAssignment

graph_client = GraphServiceClient(credentials, scopes)

request_body = AppRoleAssignment(
	principal_id = UUID("b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94"),
	resource_id = UUID("7ea9e944-71ce-443d-811c-71e8047b557a"),
	app_role_id = UUID("df021288-bdef-4463-88db-98f22de89214"),
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').app_role_assigned_to.post(request_body)


```