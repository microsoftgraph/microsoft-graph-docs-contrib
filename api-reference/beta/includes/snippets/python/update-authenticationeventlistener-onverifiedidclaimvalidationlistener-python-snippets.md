---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.authentication_event_listener import AuthenticationEventListener
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AuthenticationEventListener(
	odata_type = "#microsoft.graph.onVerifiedIdClaimValidationListener",
	display_name = "Verified ID Claim Validation Listener (updated)",
	additional_data = {
			"handler" : {
					"@odata_type" : "#microsoft.graph.onVerifiedIdClaimValidationCustomExtensionHandler",
					"configuration" : {
							"@odata_type" : "#microsoft.graph.customExtensionOverwriteConfiguration",
							"client_configuration" : {
									"@odata_type" : "#microsoft.graph.customExtensionClientConfiguration",
									"maximum_retries" : 1,
									"timeout_in_milliseconds" : 2000,
							},
							"behavior_on_error" : {
									"@odata_type" : "#microsoft.graph.customExtensionBehaviorOnError",
							},
					},
			},
	}
)

result = await graph_client.identity.authentication_event_listeners.by_authentication_event_listener_id('authenticationEventListener-id').patch(request_body)


```