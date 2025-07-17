---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.app_role_assignment import AppRoleAssignment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AppRoleAssignment(
	principal_id = UUID("59bb3898-0621-4414-ac61-74f9d7201355"),
	principal_type = "User",
	app_role_id = UUID("3a84e31e-bffa-470f-b9e6-754a61e4dc63"),
	resource_id = UUID("d3616293-fff8-4415-9f01-33b05dad1b46"),
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').app_role_assignments.post(request_body)


```