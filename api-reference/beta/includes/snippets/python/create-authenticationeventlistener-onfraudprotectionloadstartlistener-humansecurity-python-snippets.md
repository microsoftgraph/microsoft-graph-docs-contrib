---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.authentication_event_listener import AuthenticationEventListener
from msgraph_beta.generated.models.authentication_conditions import AuthenticationConditions
from msgraph_beta.generated.models.authentication_conditions_applications import AuthenticationConditionsApplications
from msgraph_beta.generated.models.authentication_condition_application import AuthenticationConditionApplication
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AuthenticationEventListener(
	odata_type = "#microsoft.graph.onFraudProtectionLoadStartListener",
	conditions = AuthenticationConditions(
		applications = AuthenticationConditionsApplications(
			include_applications = [
				AuthenticationConditionApplication(
					app_id = "0001111-aaaa-2222-bbbb-3333cccc4444",
				),
			],
		),
	),
	additional_data = {
			"handler" : {
					"@odata_type" : "#microsoft.graph.onFraudProtectionLoadStartExternalUsersAuthHandler",
					"sign_up" : {
							"@odata_type" : "#microsoft.graph.fraudProtectionProviderConfiguration",
							"fraud_protection_provider" : {
									"@odata_type" : "#microsoft.graph.humanSecurityFraudProtectionProvider",
									"id" : "fabe5100-cc02-46c1-bd0e-ce885fe367fd",
							},
					},
			},
	}
)

result = await graph_client.identity.authentication_event_listeners.post(request_body)


```