---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ServicePrincipal(
	app_role_assignment_required = True,
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').patch(request_body)


```