---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DelegatedPermissionClassification()
request_body.permission_id = 'e1fe6dd8-ba31-4d61-89e7-88639da4683d'

request_body.permission_name = 'User.Read'

request_body.classification(PermissionClassificationType.Low('permissionclassificationtype.low'))




result = await client.service_principals.by_service_principal_id('servicePrincipal-id').delegated_permission_classifications.post(request_body = request_body)


```