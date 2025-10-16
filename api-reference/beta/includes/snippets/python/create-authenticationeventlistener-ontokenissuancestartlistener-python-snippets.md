---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.on_token_issuance_start_listener import OnTokenIssuanceStartListener
from msgraph_beta.generated.models.authentication_conditions import AuthenticationConditions
from msgraph_beta.generated.models.authentication_conditions_applications import AuthenticationConditionsApplications
from msgraph_beta.generated.models.authentication_condition_application import AuthenticationConditionApplication
from msgraph_beta.generated.models.on_token_issuance_start_custom_extension_handler import OnTokenIssuanceStartCustomExtensionHandler
from msgraph_beta.generated.models.on_token_issuance_start_custom_extension import OnTokenIssuanceStartCustomExtension
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OnTokenIssuanceStartListener(
	odata_type = "#microsoft.graph.onTokenIssuanceStartListener",
	conditions = AuthenticationConditions(
		applications = AuthenticationConditionsApplications(
			include_all_applications = False,
			include_applications = [
				AuthenticationConditionApplication(
					app_id = "0001111-aaaa-2222-bbbb-3333cccc4444",
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