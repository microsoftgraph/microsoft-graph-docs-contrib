---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.on_token_issuance_start_listener import OnTokenIssuanceStartListener
from msgraph.generated.models.authentication_conditions import AuthenticationConditions
from msgraph.generated.models.authentication_conditions_applications import AuthenticationConditionsApplications
from msgraph.generated.models.authentication_condition_application import AuthenticationConditionApplication
from msgraph.generated.models.on_token_issuance_start_custom_extension_handler import OnTokenIssuanceStartCustomExtensionHandler
from msgraph.generated.models.on_token_issuance_start_custom_extension import OnTokenIssuanceStartCustomExtension

graph_client = GraphServiceClient(credentials, scopes)

request_body = OnTokenIssuanceStartListener(
	odata_type = "#microsoft.graph.onTokenIssuanceStartListener",
	conditions = AuthenticationConditions(
		applications = AuthenticationConditionsApplications(
			include_applications = [
				AuthenticationConditionApplication(
					app_id = "a13d0fc1-04ab-4ede-b215-63de0174cbb4",
				),
			],
		),
	),
	handler = OnTokenIssuanceStartCustomExtensionHandler(
		odata_type = "#microsoft.graph.onTokenIssuanceStartCustomExtensionHandler",
		custom_extension = OnTokenIssuanceStartCustomExtension(
			id = "6fc5012e-7665-43d6-9708-4370863f4e6e",
		),
	),
)

result = await graph_client.identity.authentication_event_listeners.post(request_body)


```