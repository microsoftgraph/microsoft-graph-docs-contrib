---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = $refDeleteRequestBody()
additional_data = [
'@odata_id' => 'https://graph.microsoft.com/v1.0/directoryObjects/{id}', 
];
request_body.additional_data(additional_data)





await client.service_principals.by_service_principal_id('servicePrincipal-id').owners.by_owner_id('directoryObject-id').ref.delete(request_body = request_body)


```