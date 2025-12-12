---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.on_otp_send_custom_extension import OnOtpSendCustomExtension
from msgraph.generated.models.azure_ad_token_authentication import AzureAdTokenAuthentication
from msgraph.generated.models.custom_extension_client_configuration import CustomExtensionClientConfiguration
from msgraph.generated.models.http_request_endpoint import HttpRequestEndpoint
from msgraph.generated.models.custom_extension_behavior_on_error import CustomExtensionBehaviorOnError
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OnOtpSendCustomExtension(
	odata_type = "#microsoft.graph.onOtpSendCustomExtension",
	authentication_configuration = AzureAdTokenAuthentication(
		odata_type = "#microsoft.graph.azureAdTokenAuthentication",
		resource_id = "api://onotpsendcustomextension.b2c.expert/fb96de85-2abe-4b02-b45f-64ba122c509e",
	),
	client_configuration = CustomExtensionClientConfiguration(
		timeout_in_milliseconds = 2000,
		maximum_retries = 1,
	),
	description = "Use an external Email provider to send OTP Codes.",
	display_name = "onEmailOtpSendCustomExtension",
	endpoint_configuration = HttpRequestEndpoint(
		odata_type = "#microsoft.graph.httpRequestEndpoint",
		target_url = "https://onotpsendcustomextension.b2c.expert/api/OnOTPCodeSendToTeamsDemo",
	),
	behavior_on_error = CustomExtensionBehaviorOnError(
		odata_type = "microsoft.graph.customExtensionBehaviorOnError",
	),
)

result = await graph_client.identity.custom_authentication_extensions.post(request_body)


```