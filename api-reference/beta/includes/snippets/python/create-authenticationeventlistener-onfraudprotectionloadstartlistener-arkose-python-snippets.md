---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.on_fraud_protection_load_start_listener import OnFraudProtectionLoadStartListener
from msgraph_beta.generated.models.authentication_conditions import AuthenticationConditions
from msgraph_beta.generated.models.authentication_conditions_applications import AuthenticationConditionsApplications
from msgraph_beta.generated.models.authentication_condition_application import AuthenticationConditionApplication
from msgraph_beta.generated.models.on_fraud_protection_load_start_external_users_auth_handler import OnFraudProtectionLoadStartExternalUsersAuthHandler
from msgraph_beta.generated.models.fraud_protection_provider_configuration import FraudProtectionProviderConfiguration
from msgraph_beta.generated.models.arkose_fraud_protection_provider import ArkoseFraudProtectionProvider
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OnFraudProtectionLoadStartListener(
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
	handler = OnFraudProtectionLoadStartExternalUsersAuthHandler(
		odata_type = "#microsoft.graph.onFraudProtectionLoadStartExternalUsersAuthHandler",
		sign_up = FraudProtectionProviderConfiguration(
			odata_type = "#microsoft.graph.fraudProtectionProviderConfiguration",
			fraud_protection_provider = ArkoseFraudProtectionProvider(
				odata_type = "#microsoft.graph.arkoseFraudProtectionProvider",
				id = "6fedd01b-0afb-4a07-967f-d1ccbd81102b",
			),
		),
	),
)

result = await graph_client.identity.authentication_event_listeners.post(request_body)


```