---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.on_fraud_protection_load_start_listener import OnFraudProtectionLoadStartListener
from msgraph.generated.models.authentication_conditions import AuthenticationConditions
from msgraph.generated.models.authentication_conditions_applications import AuthenticationConditionsApplications
from msgraph.generated.models.authentication_condition_application import AuthenticationConditionApplication
from msgraph.generated.models.on_fraud_protection_load_start_external_users_auth_handler import OnFraudProtectionLoadStartExternalUsersAuthHandler
from msgraph.generated.models.fraud_protection_provider_configuration import FraudProtectionProviderConfiguration
from msgraph.generated.models.human_security_fraud_protection_provider import HumanSecurityFraudProtectionProvider
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
			fraud_protection_provider = HumanSecurityFraudProtectionProvider(
				odata_type = "#microsoft.graph.humanSecurityFraudProtectionProvider",
				id = "fabe5100-cc02-46c1-bd0e-ce885fe367fd",
			),
		),
	),
)

result = await graph_client.identity.authentication_event_listeners.post(request_body)


```