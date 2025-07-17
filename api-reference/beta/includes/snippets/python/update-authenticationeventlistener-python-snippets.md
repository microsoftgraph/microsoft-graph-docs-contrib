---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.on_token_issuance_start_listener import OnTokenIssuanceStartListener
from msgraph_beta.generated.models.authentication_conditions import AuthenticationConditions
from msgraph_beta.generated.models.authentication_conditions_applications import AuthenticationConditionsApplications
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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