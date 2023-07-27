---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ServicePrincipal()
additional_data = [
'custom_security_attributes' => request_body = CustomSecurityAttributes()
engineering = Engineering()
		engineering.@odata_type = '#Microsoft.DirectoryServices.CustomSecurityAttributeValue'

		engineering.project_date = '2022-10-01'


request_body.engineering = engineering

request_body.custom_security_attributes = customSecurityAttributes

];
request_body.additional_data(additional_data)





result = await client.service_principals.by_service_principal_id('servicePrincipal-id').patch(request_body = request_body)


```