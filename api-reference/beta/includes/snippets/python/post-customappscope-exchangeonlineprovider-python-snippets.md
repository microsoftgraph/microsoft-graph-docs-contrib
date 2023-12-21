---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = CustomAppScope(
	type = "RecipientScope",
	display_name = "Protected Exec Users",
	custom_attributes = CustomAppScopeAttributesDictionary(
		additional_data = {
				"exclusive" : False,
				"recipient_filter" : "Title -like 'VP*'",
		}
	),
)

result = await graph_client.role_management.exchange.custom_app_scopes.post(request_body)


```