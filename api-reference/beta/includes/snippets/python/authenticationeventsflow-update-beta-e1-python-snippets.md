---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.external_users_self_service_sign_up_events_flow import ExternalUsersSelfServiceSignUpEventsFlow

graph_client = GraphServiceClient(credentials, scopes)

request_body = ExternalUsersSelfServiceSignUpEventsFlow(
	odata_type = "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
	display_name = "New user flow description",
	priority = 200,
)

result = await graph_client.identity.authentication_events_flows.by_authentication_events_flow_id('authenticationEventsFlow-id').patch(request_body)


```