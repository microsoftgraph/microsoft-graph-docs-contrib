---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.service_principal import ServicePrincipal
from msgraph.generated.models.custom_security_attribute_value import CustomSecurityAttributeValue

graph_client = GraphServiceClient(credentials, scopes)

request_body = ServicePrincipal(
	custom_security_attributes = CustomSecurityAttributeValue(
		additional_data = {
				"engineering" : {
						"@odata_type" : "#Microsoft.DirectoryServices.CustomSecurityAttributeValue",
						"project_date" : "2022-10-01",
				},
		}
	),
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').patch(request_body)


```