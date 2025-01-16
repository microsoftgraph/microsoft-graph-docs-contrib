---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.app_role_assignment import AppRoleAssignment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AppRoleAssignment(
	principal_id = UUID("4628e7df-dff3-407c-a08f-75f08c0806dc"),
	principal_type = "User",
	app_role_id = UUID("18d14569-c3bd-439b-9a66-3a2aee01d14f"),
	resource_id = UUID("a8cac399-cde5-4516-a674-819503c61313"),
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').app_role_assignments.post(request_body)


```