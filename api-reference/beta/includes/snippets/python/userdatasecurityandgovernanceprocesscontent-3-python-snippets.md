---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.datasecurityandgovernance.process_content.process_content_post_request_body import ProcessContentPostRequestBody
from msgraph_beta.generated.models.process_content_request import ProcessContentRequest
from msgraph_beta.generated.models.process_content_metadata_base import ProcessContentMetadataBase
from msgraph_beta.generated.models.process_conversation_metadata import ProcessConversationMetadata
from msgraph_beta.generated.models.binary_content import BinaryContent
from msgraph_beta.generated.models.activity_metadata import ActivityMetadata
from msgraph_beta.generated.models.user_activity_type import UserActivityType
from msgraph_beta.generated.models.integrated_application_metadata import IntegratedApplicationMetadata
from msgraph_beta.generated.models.protected_application_metadata import ProtectedApplicationMetadata
from msgraph_beta.generated.models.policy_location_url import PolicyLocationUrl
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ProcessContentPostRequestBody(
	content_to_process = ProcessContentRequest(
		content_entries = [
			ProcessConversationMetadata(
				odata_type = "#microsoft.graph.processConversationMetadata",
				identifier = "f7af180f-dc2e-467c-9719-757e1c61eabf",
				content = BinaryContent(
					odata_type = "#microsoft.graph.binaryContent",
					data = base64.urlsafe_b64decode("Base64 encoded content"),
				),
				name = "Some name",
				correlation_id = "d63eafd2-e3a9-4c1a-b726-a2e9b9d95822",
			),
		],
		activity_metadata = ActivityMetadata(
			activity = UserActivityType.UploadFile,
		),
		integrated_app_metadata = IntegratedApplicationMetadata(
			name = "Some integrated app name",
			version = "1.0.0",
		),
		protected_app_metadata = ProtectedApplicationMetadata(
			application_location = PolicyLocationUrl(
				odata_type = "#microsoft.graph.policyLocationUrl",
				value = "https://gemini.google.com",
			),
		),
		additional_data = {
				"device_metadata" : {
						"device_type" : "Unmanaged",
						"ip_address" : None,
						"operating_system_specifications" : {
								"operating_system_platform" : "Windows",
								"operating_system_version" : "11.1",
						},
				},
		}
	),
)

result = await graph_client.me.data_security_and_governance.process_content.post(request_body)


```