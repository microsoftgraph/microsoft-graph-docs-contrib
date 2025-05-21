---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.content_activity import ContentActivity
from msgraph_beta.generated.models.process_content_request import ProcessContentRequest
from msgraph_beta.generated.models.process_content_metadata_base import ProcessContentMetadataBase
from msgraph_beta.generated.models.process_conversation_metadata import ProcessConversationMetadata
from msgraph_beta.generated.models.activity_metadata import ActivityMetadata
from msgraph_beta.generated.models.user_activity_type import UserActivityType
from msgraph_beta.generated.models.integrated_application_metadata import IntegratedApplicationMetadata
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ContentActivity(
	content_metadata = ProcessContentRequest(
		content_entries = [
			ProcessConversationMetadata(
				odata_type = "microsoft.graph.processConversationMetadata",
				identifier = "68fa951a-898a-4427-8e9e-6f8c05e9fe2b",
				name = "API Explorer message",
				correlation_id = "559a2343-7aa2-4912-93fe-72c47b2706ed",
				is_truncated = False,
				created_date_time = "2025-04-28T20:17:55",
				modified_date_time = "2025-04-28T20:17:55",
				additional_data = {
						"sequence_no" : 0,
				}
			),
		],
		activity_metadata = ActivityMetadata(
			activity = UserActivityType.UploadText,
		),
		integrated_app_metadata = IntegratedApplicationMetadata(
			name = "API Explorer",
			version = "0.1",
		),
		additional_data = {
				"device_metadata" : {
						"device_type" : "unmanaged",
						"operating_system_specifications" : {
								"operating_system_platform" : "Windows 11",
								"operating_system_version" : "10.0.26100.0",
						},
				},
				"user_id" : "7c2f8f10-cba8-4a8d-9449-db4b76d17390",
				"scope_identifier" : "0",
		}
	),
)

result = await graph_client.me.data_security_and_governance.activities.content_activities.post(request_body)


```