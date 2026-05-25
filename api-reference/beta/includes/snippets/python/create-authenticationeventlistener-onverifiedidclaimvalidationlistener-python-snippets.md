---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.on_verified_id_claim_validation_listener import OnVerifiedIdClaimValidationListener
from msgraph_beta.generated.models.authentication_conditions import AuthenticationConditions
from msgraph_beta.generated.models.authentication_conditions_applications import AuthenticationConditionsApplications
from msgraph_beta.generated.models.authentication_condition_application import AuthenticationConditionApplication
from msgraph_beta.generated.models.on_verified_id_claim_validation_custom_extension_handler import OnVerifiedIdClaimValidationCustomExtensionHandler
from msgraph_beta.generated.models.custom_extension_overwrite_configuration import CustomExtensionOverwriteConfiguration
from msgraph_beta.generated.models.custom_extension_client_configuration import CustomExtensionClientConfiguration
from msgraph_beta.generated.models.custom_extension_behavior_on_error import CustomExtensionBehaviorOnError
from msgraph_beta.generated.models.on_verified_id_claim_validation_custom_extension import OnVerifiedIdClaimValidationCustomExtension
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OnVerifiedIdClaimValidationListener(
	odata_type = "#microsoft.graph.onVerifiedIdClaimValidationListener",
	display_name = "Verified ID Claim Validation Listener",
	priority = 500,
	conditions = AuthenticationConditions(
		applications = AuthenticationConditionsApplications(
			include_all_applications = False,
			include_applications = [
				AuthenticationConditionApplication(
					app_id = "63856651-13d9-4784-9abf-20758d509e19",
				),
			],
		),
	),
	authentication_events_flow_id = "5a8e8f57-82b2-4cbf-b145-3e6e0c154897",
	handler = OnVerifiedIdClaimValidationCustomExtensionHandler(
		odata_type = "#microsoft.graph.onVerifiedIdClaimValidationCustomExtensionHandler",
		configuration = CustomExtensionOverwriteConfiguration(
			odata_type = "#microsoft.graph.customExtensionOverwriteConfiguration",
			client_configuration = CustomExtensionClientConfiguration(
				odata_type = "#microsoft.graph.customExtensionClientConfiguration",
				maximum_retries = 1,
				timeout_in_milliseconds = 2000,
			),
			behavior_on_error = CustomExtensionBehaviorOnError(
				odata_type = "#microsoft.graph.customExtensionBehaviorOnError",
			),
		),
		custom_extension = OnVerifiedIdClaimValidationCustomExtension(
			id = "6a0a3429-be77-0aed-951e-1c8aed62bf8a",
		),
	),
)

result = await graph_client.identity.authentication_event_listeners.post(request_body)


```