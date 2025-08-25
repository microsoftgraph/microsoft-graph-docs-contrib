---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.datasecurityandgovernance.process_content.process_content_post_request_body import ProcessContentPostRequestBody
from msgraph_beta.generated.models.process_content_request import ProcessContentRequest
from msgraph_beta.generated.models.process_content_metadata_base import ProcessContentMetadataBase
from msgraph_beta.generated.models.process_file_metadata import ProcessFileMetadata
from msgraph_beta.generated.models.text_content import TextContent
from msgraph_beta.generated.models.custom_metadata_dictionary import CustomMetadataDictionary
from msgraph_beta.generated.models.activity_metadata import ActivityMetadata
from msgraph_beta.generated.models.user_activity_type import UserActivityType
from msgraph_beta.generated.models.device_metadata import DeviceMetadata
from msgraph_beta.generated.models.operating_system_specifications import OperatingSystemSpecifications
from msgraph_beta.generated.models.integrated_application_metadata import IntegratedApplicationMetadata
from msgraph_beta.generated.models.protected_application_metadata import ProtectedApplicationMetadata
from msgraph_beta.generated.models.policy_location_url import PolicyLocationUrl
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ProcessContentPostRequestBody(
	content_to_process = ProcessContentRequest(
		content_entries = [
			ProcessFileMetadata(
				odata_type = "#microsoft.graph.processFileMetadata",
				identifier = "f7af180f-dc2e-467c-9719-757e1c61eabf",
				content = TextContent(
					odata_type = "#microsoft.graph.textContent",
					data = "Base64 encoded content",
				),
				name = "Test File.docx",
				correlation_id = "d63eafd2-e3a9-4c1a-b726-a2e9b9d95822",
				created_date_time = "2024-07-23T01:31:40.2020463Z",
				modified_date_time = "2024-09-17T13:45:21.0000000Z",
				correlation_id = "9d84223c-521c-42f4-8f35-3cdeabe515d3",
				length = 17352,
				is_truncated = False,
				owner_id = "ffe1ca70-6e5b-4120-abf0-472034ba05d4",
				custom_properties = CustomMetadataDictionary(
					additional_data = {
							"department" : "Finance",
							"reviewer_name" : "John Smith",
					}
				),
			),
		],
		activity_metadata = ActivityMetadata(
			activity = UserActivityType.UploadFile,
		),
		device_metadata = DeviceMetadata(
			device_type = "unmanaged",
			operating_system_specifications = OperatingSystemSpecifications(
				operating_system_platform = "Windows",
				operating_system_version = "11.1",
			),
		),
		integrated_app_metadata = IntegratedApplicationMetadata(
			name = "Network Proxy App",
			version = "1.0.0",
		),
		protected_app_metadata = ProtectedApplicationMetadata(
			name = "My App",
			version = "0.1",
			application_location = PolicyLocationUrl(
				odata_type = "#microsoft.graph.policyLocationUrl",
				value = "https://gemini.google.com",
			),
		),
	),
)

result = await graph_client.me.data_security_and_governance.process_content.post(request_body)


```