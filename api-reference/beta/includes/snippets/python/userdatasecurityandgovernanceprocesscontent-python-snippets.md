---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.users.item.datasecurityandgovernance.process_content.process_content_post_request_body import ProcessContentPostRequestBody
from msgraph_beta.generated.models.process_content_request import ProcessContentRequest
from msgraph_beta.generated.models.process_content_metadata_base import ProcessContentMetadataBase
from msgraph_beta.generated.models.content_base import ContentBase
from msgraph_beta.generated.models.activity_metadata import ActivityMetadata
from msgraph_beta.generated.models.user_activity_type import UserActivityType
from msgraph_beta.generated.models.integrated_application_metadata import IntegratedApplicationMetadata
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ProcessContentPostRequestBody(
	content_to_process = ProcessContentRequest(
		content_entries = [
			ProcessContentMetadataBase(
				odata_type = "microsoft.graph.processFileMetadata",
				identifier = "91e1ca70-6e5b-4120-abf0-472034ba05c3",
				content = ContentBase(
					odata_type = "microsoft.graph.binaryContent",
					additional_data = {
							"data" : "<some-binary-data>",
					}
				),
				name = "Example.docx",
				created_date_time = "2024-07-23T01:31:40.2020463Z",
				correlation_id = "54689",
				sequence_number = 1,
				length = 17352,
				is_truncated = False,
				additional_data = {
						"updated_date_time" : "2024-09-17T13:45:21.0000000Z",
						"owner_id" : "ffe1ca70-6e5b-4120-abf0-472034ba05d4",
						"custom_properties" : {
								"department" : "Finance",
								"reviewer_name" : "John Smith",
						},
				}
			),
		],
		activity_metadata = ActivityMetadata(
			activity = UserActivityType.UploadFile,
			additional_data = {
					"application_location" : "bing.com",
			}
		),
		integrated_app_metadata = IntegratedApplicationMetadata(
			name = "ContosoIsvApplication",
			version = "1.2",
		),
		additional_data = {
				"device_metadata" : {
						"device_type" : "unmanaged",
						"operating_system_specifications" : {
								"operating_system_platform" : "windows",
								"operating_system_version" : "10.0.2.4",
						},
				},
		}
	),
)

result = await graph_client.me.data_security_and_governance.process_content.post(request_body)


```