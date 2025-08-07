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
from msgraph.generated.models.protected_application_metadata import ProtectedApplicationMetadata
from msgraph.generated.models.policy_location_application import PolicyLocationApplication
from msgraph.generated.models.integrated_application_metadata import IntegratedApplicationMetadata
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ProcessContentPostRequestBody(
	content_to_process = ProcessContentRequest(
		content_entries = [
			ProcessConversationMetadata(
				odata_type = "microsoft.graph.processConversationMetadata",
				identifier = "07785517-9081-4fe7-a9dc-85bcdf5e9075",
				content = TextContent(
					odata_type = "microsoft.graph.textContent",
					data = "Write an acceptance letter for Alex Wilber with Credit card number 4532667785213500, ssn: 120-98-1437 at One Microsoft Way, Redmond, WA 98052",
				),
				name = "PC Purview API Explorer message",
				correlation_id = "d63eafd2-e3a9-4c1a-b726-a2e9b9d9580d",
				sequence_number = 0,
				is_truncated = False,
				created_date_time = "2025-05-27T17:23:20",
				modified_date_time = "2025-05-27T17:23:20",
			),
		],
		activity_metadata = ActivityMetadata(
			activity = UserActivityType.UploadText,
		),
		device_metadata = DeviceMetadata(
			device_type = "Unmanaged",
			operating_system_specifications = OperatingSystemSpecifications(
				operating_system_platform = "Windows 11",
				operating_system_version = "10.0.26100.0",
			),
			ip_address = "127.0.0.1",
		),
		protected_app_metadata = ProtectedApplicationMetadata(
			name = "PC Purview API Explorer",
			version = "0.2",
			application_location = PolicyLocationApplication(
				odata_type = "microsoft.graph.policyLocationApplication",
				value = "83ef208a-0396-4893-9d4f-d36efbffc8bd",
			),
		),
		integrated_app_metadata = IntegratedApplicationMetadata(
			name = "PC Purview API Explorer",
			version = "0.2",
		),
	),
)

result = await graph_client.me.data_security_and_governance.process_content.post(request_body)


```