---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.application import Application

graph_client = GraphServiceClient(credentials, scopes)

request_body = Application(
	additional_data = {
			"on_premises_publishing" : {
					"single_sign_on_settings" : {
							"kerberos_sign_on_settings" : {
									"kerberos_service_principal_name" : "HTTP/iwademo.contoso.com",
									"kerberos_sign_on_mapping_attribute_type" : "userPrincipalName",
							},
							"single_sign_on_mode" : "onPremisesKerberos",
					},
			},
	}
)

await graph_client.applications.by_application_id('application-id').patch(request_body)


```