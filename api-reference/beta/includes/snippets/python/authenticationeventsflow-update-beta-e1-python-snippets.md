---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = ExternalUsersSelfServiceSignUpEventsFlow(
	odata_type = "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
	display_name = "New user flow description",
	priority = 200,
)

result = await graph_client.identity.authentication_event_flows.by_authentication_event_flow_id('authenticationEventsFlow-id').patch(body = request_body)


```