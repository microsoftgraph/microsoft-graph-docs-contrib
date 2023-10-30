---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = DelegatedPermissionClassification(
	permission_id = "e1fe6dd8-ba31-4d61-89e7-88639da4683d",
	permission_name = "User.Read",
	classification = PermissionClassificationType.Low,
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').delegated_permission_classifications.post(request_body)


```