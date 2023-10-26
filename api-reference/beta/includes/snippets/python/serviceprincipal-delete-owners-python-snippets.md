---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = $refDeleteRequestBody(
	additional_data = {
			"@odata_id" : "https://graph.microsoft.com/v1.0/directoryObjects/{id}",
	}
)

await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').owners.by_directory_object_id('directoryObject-id').ref.delete(request_body)


```