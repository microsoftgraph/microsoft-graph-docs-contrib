---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ConditionalAccessSettings(
	signaling_status = Status.Disabled,
	additional_data = {
			"@odata_context" : "https://graph.microsoft.com/beta/networkAccess/settings/$metadata#conditionalAccess",
	}
)

result = await graph_client.network_access.settings.conditional_access.patch(request_body)


```