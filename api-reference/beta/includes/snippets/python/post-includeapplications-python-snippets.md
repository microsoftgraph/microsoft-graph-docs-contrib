---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AuthenticationConditionApplication(
	odata_type = "#microsoft.graph.authenticationConditionApplication",
	app_id = "63856651-13d9-4784-9abf-20758d509e19",
)

result = await graph_client.identity.authentication_events_flows.by_authentication_events_flow_id('authenticationEventsFlow-id').conditions.applications.include_applications.post(request_body)


```