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
				identifier = "d6ab5054-e111-45c3-9fba-9f2a59c9bbf8",
				name = "CA Purview API Explorer message",
				correlation_id = "edfb7f88-b963-4ef2-8b30-5cb90f80e01e",
				sequence_number = 0,
				is_truncated = False,
				created_date_time = "2025-05-28T20:20:37",
				modified_date_time = "2025-05-28T20:20:37",
			),
		],
		activity_metadata = ActivityMetadata(
			activity = UserActivityType.DownloadText,
		),
		integrated_app_metadata = IntegratedApplicationMetadata(
			name = "CA Purview API Explorer",
			version = "0.1",
		),
		additional_data = {
				"device_metadata" : {
						"operating_system_specifications" : {
								"operating_system_platform" : "Windows 11",
								"operating_system_version" : "10.0.26100.0",
						},
				},
				"user_id" : "7c497f10-cba8-4a8d-9449-db4b76d1ef80",
				"scope_identifier" : "0",
		}
	),
)

result = await graph_client.me.data_security_and_governance.activities.content_activities.post(request_body)


```