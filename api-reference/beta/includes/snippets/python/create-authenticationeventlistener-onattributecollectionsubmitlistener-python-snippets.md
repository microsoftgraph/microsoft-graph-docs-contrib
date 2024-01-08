---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = OnAttributeCollectionSubmitListener(
	odata_type = "#microsoft.graph.onAttributeCollectionSubmitListener",
	priority = 500,
	conditions = AuthenticationConditions(
		applications = AuthenticationConditionsApplications(
			include_all_applications = False,
			include_applications = [
				AuthenticationConditionApplication(
					app_id = "a7eed01f-a333-4983-bc6b-d359ec9e5eef",
				),
			],
		),
	),
	handler = OnAttributeCollectionSubmitCustomExtensionHandler(
		odata_type = "#microsoft.graph.onAttributeCollectionSubmitCustomExtensionHandler",
		custom_extension = OnAttributeCollectionSubmitCustomExtension(
			id = "66867d1f-7824-4f38-aad1-75da1ad09ee2",
		),
	),
)

result = await graph_client.identity.authentication_event_listeners.post(request_body)


```