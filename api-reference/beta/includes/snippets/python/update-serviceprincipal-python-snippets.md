---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = ServicePrincipal(
	app_role_assignment_required = True,
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').patch(request_body)


```