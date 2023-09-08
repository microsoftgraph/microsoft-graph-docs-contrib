---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = User(
	custom_security_attributes = CustomSecurityAttributeValue(
		additional_data = {
				"engineering" : (
					odata_type = "#Microsoft.DirectoryServices.CustomSecurityAttributeValue",
					certification = False,
				),
		}
	),
)

result = await graph_client.users.by_user_id('user-id').patch(body = request_body)


```