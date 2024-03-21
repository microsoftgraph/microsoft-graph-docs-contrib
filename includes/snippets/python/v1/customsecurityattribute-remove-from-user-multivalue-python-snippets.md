---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.user import User
from msgraph.generated.models.custom_security_attribute_value import CustomSecurityAttributeValue

graph_client = GraphServiceClient(credentials, scopes)

request_body = User(
	custom_security_attributes = CustomSecurityAttributeValue(
		additional_data = {
				"engineering" : {
						"@odata_type" : "#Microsoft.DirectoryServices.CustomSecurityAttributeValue",
						"project" : [
						],
				},
		}
	),
)

result = await graph_client.users.by_user_id('user-id').patch(request_body)


```