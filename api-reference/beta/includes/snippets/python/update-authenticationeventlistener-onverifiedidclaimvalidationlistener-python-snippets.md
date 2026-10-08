---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.on_verified_id_claim_validation_listener import OnVerifiedIdClaimValidationListener
from msgraph_beta.generated.models.on_verified_id_claim_validation_custom_extension_handler import OnVerifiedIdClaimValidationCustomExtensionHandler
from msgraph_beta.generated.models.custom_extension_overwrite_configuration import CustomExtensionOverwriteConfiguration
from msgraph_beta.generated.models.custom_extension_client_configuration import CustomExtensionClientConfiguration
from msgraph_beta.generated.models.custom_extension_behavior_on_error import CustomExtensionBehaviorOnError
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OnVerifiedIdClaimValidationListener(
	odata_type = "#microsoft.graph.onVerifiedIdClaimValidationListener",
	display_name = "Verified ID Claim Validation Listener (updated)",
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
	),
)

result = await graph_client.identity.authentication_event_listeners.by_authentication_event_listener_id('authenticationEventListener-id').patch(request_body)


```