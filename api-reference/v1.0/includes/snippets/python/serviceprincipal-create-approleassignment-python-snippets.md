---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.app_role_assignment import AppRoleAssignment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AppRoleAssignment(
	principal_id = UUID("9028d19c-26a9-4809-8e3f-20ff73e2d75e"),
	resource_id = UUID("8fce32da-1246-437b-99cd-76d1d4677bd5"),
	app_role_id = UUID("498476ce-e0fe-48b0-b801-37ba7e2685c6"),
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').app_role_assignments.post(request_body)


```