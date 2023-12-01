---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = CustomAppScope(
	custom_attributes = CustomAppScopeAttributesDictionary(
		additional_data = {
				"recipient_filter" : "City -eq 'Seattle'",
		}
	),
)

result = await graph_client.role_management.exchange.custom_app_scopes.by_custom_app_scope_id('customAppScope-id').patch(request_body)


```