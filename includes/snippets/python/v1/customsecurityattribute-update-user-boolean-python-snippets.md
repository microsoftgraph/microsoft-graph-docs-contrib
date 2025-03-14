---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.user import User
from msgraph.generated.models.custom_security_attribute_value import CustomSecurityAttributeValue
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = User(
	custom_security_attributes = CustomSecurityAttributeValue(
		additional_data = {
				"engineering" : {
						"@odata_type" : "#Microsoft.DirectoryServices.CustomSecurityAttributeValue",
						"certification" : False,
				},
		}
	),
)

result = await graph_client.users.by_user_id('user-id').patch(request_body)


```