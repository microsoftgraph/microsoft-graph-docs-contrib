---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = OnAttributeCollectionStartListener(
	odata_type = "#microsoft.graph.onAttributeCollectionStartListener",
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
	handler = OnAttributeCollectionStartCustomExtensionHandler(
		odata_type = "#microsoft.graph.onAttributeCollectionStartCustomExtensionHandler",
		custom_extension = OnAttributeCollectionStartCustomExtension(
			id = "2d9c3e8d-88a9-444e-8c4c-f0c6c4fe1c02",
		),
	),
)

result = await graph_client.identity.authentication_event_listeners.post(request_body)


```