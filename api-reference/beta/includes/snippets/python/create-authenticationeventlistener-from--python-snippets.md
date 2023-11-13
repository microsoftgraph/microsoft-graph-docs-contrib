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
			include_applications = [
				AuthenticationConditionApplication(
					app_id = "a13d0fc1-04ab-4ede-b215-63de0174cbb4",
				),
			],
		),
	),
	priority = 500,
	handler = OnTokenIssuanceStartCustomExtensionHandler(
		odata_type = "#microsoft.graph.onTokenIssuanceStartCustomExtensionHandler",
		custom_extension = OnTokenIssuanceStartCustomExtension(
			id = "6fc5012e-7665-43d6-9708-4370863f4e6e",
		),
	),
)

result = await graph_client.identity.authentication_event_listeners.post(request_body)


```