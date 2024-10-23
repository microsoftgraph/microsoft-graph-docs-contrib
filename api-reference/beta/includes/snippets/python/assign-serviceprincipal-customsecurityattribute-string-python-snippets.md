---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.service_principal import ServicePrincipal
from msgraph_beta.generated.models.custom_security_attribute_value import CustomSecurityAttributeValue
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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