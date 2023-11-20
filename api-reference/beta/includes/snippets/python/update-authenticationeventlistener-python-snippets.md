---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = OnTokenIssuanceStartListener(
	odata_type = "#microsoft.graph.onTokenIssuanceStartListener",
	conditions = AuthenticationConditions(
		applications = AuthenticationConditionsApplications(
			include_all_applications = False,
		),
	),
	priority = 500,
)

result = await graph_client.identity.authentication_event_listeners.by_authentication_event_listener_id('authenticationEventListener-id').patch(request_body)


```