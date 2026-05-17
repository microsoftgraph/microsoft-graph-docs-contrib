---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.content_activity import ContentActivity
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ContentActivity(
	additional_data = {
			"content_to_process" : {
					"content_entries" : [
						{
								"@odata_type" : "microsoft.graph.processConversationMetadata",
								"identifier" : "07785517-9081-4fe7-a9dc-85bcdf5e9075",
								"name" : "PC Purview API Explorer message",
								"correlation_id" : "d63eafd2-e3a9-4c1a-b726-a2e9b9d9580d",
								"sequence_number" : 0,
								"is_truncated" : False,
								"created_date_time" : "2025-05-27T17:23:20",
								"modified_date_time" : "2025-05-27T17:23:20",
								"agents" : [
									{
											"identifier" : "b262a092-6a2b-4682-9c7f-00baf80dbd84",
											"name" : "Copilot Agent",
											"version" : "1.2",
											"blueprint_id" : "c262a092-6a2b-4682-9c7f-00baf80dbd94",
									},
								],
								"plugins" : [
									{
											"identifier" : "f1a2b3c4-d5e6-7890-abcd-ef1234567890",
											"name" : "Microsoft Purview Data Scanner",
											"version" : "1.1",
									},
								],
								"accessed_resources_v2" : [
									{
											"identifier" : "3f2d6e5b-98d4-4f2a-9a61-45c0a8b7d123",
											"name" : "Report.xlsx",
											"url" : "https://contoso.sharepoint.com/sites/finance",
											"label_id" : "a7b4f8c9-1e2d-4f45-89b1-23456789abcd",
											"access_type" : "read",
											"status" : "success",
											"is_cross_prompt_injection_detected" : False,
									},
								],
						},
					],
					"activity_metadata" : {
							"activity" : "uploadText",
					},
					"device_metadata" : {
							"operating_system_specifications" : {
									"operating_system_platform" : "Windows 11",
									"operating_system_version" : "10.0.26100.0",
							},
							"ip_address" : "127.0.0.1",
					},
					"protected_app_metadata" : {
							"name" : "PC Purview API Explorer",
							"version" : "0.2",
							"application_location" : {
									"@odata_type" : "microsoft.graph.policyLocationApplication",
									"value" : "83ef208a-0396-4893-9d4f-d36efbffc8bd",
							},
					},
					"integrated_app_metadata" : {
							"name" : "PC Purview API Explorer",
							"version" : "0.2",
					},
			},
	}
)

result = await graph_client.me.data_security_and_governance.activities.content_activities.post(request_body)


```