---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.datasecurityandgovernance.process_content.process_content_post_request_body import ProcessContentPostRequestBody
from msgraph.generated.models.process_content_request import ProcessContentRequest
from msgraph.generated.models.process_content_metadata_base import ProcessContentMetadataBase
from msgraph.generated.models.process_conversation_metadata import ProcessConversationMetadata
from msgraph.generated.models.text_content import TextContent
from msgraph.generated.models.activity_metadata import ActivityMetadata
from msgraph.generated.models.user_activity_type import UserActivityType
from msgraph.generated.models.device_metadata import DeviceMetadata
from msgraph.generated.models.operating_system_specifications import OperatingSystemSpecifications
from msgraph.generated.models.integrated_application_metadata import IntegratedApplicationMetadata
from msgraph.generated.models.protected_application_metadata import ProtectedApplicationMetadata
from msgraph.generated.models.policy_location_url import PolicyLocationUrl
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ProcessContentPostRequestBody(
	content_to_process = ProcessContentRequest(
		content_entries = [
			ProcessConversationMetadata(
				odata_type = "#microsoft.graph.processConversationMetadata",
				identifier = "f7af180f-dc2e-467c-9719-757e1c61eabf",
				content = TextContent(
					odata_type = "#microsoft.graph.textContent",
					data = "some data",
				),
				correlation_id = "d63eafd2-e3a9-4c1a-b726-a2e9b9d95811",
				sequence_number = 0,
				name = "Test Content",
			),
		],
		activity_metadata = ActivityMetadata(
			activity = UserActivityType.UploadText,
		),
		device_metadata = DeviceMetadata(
			device_type = "unmanaged",
			ip_address = None,
			operating_system_specifications = OperatingSystemSpecifications(
				operating_system_platform = "Windows",
				operating_system_version = "11.1",
			),
		),
		integrated_app_metadata = IntegratedApplicationMetadata(
			name = "My Entra App",
			version = "0.1",
		),
		protected_app_metadata = ProtectedApplicationMetadata(
			name = "My Entra App",
			version = "0.1",
			application_location = PolicyLocationUrl(
				odata_type = "#microsoft.graph.policyLocationUrl",
				value = "https://gemini.google.com",
			),
		),
	),
)

result = await graph_client.users.by_user_id('user-id').data_security_and_governance.process_content.post(request_body)


```