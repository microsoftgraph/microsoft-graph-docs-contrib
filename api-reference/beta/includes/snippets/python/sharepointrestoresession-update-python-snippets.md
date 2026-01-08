---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.share_point_restore_session import SharePointRestoreSession
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SharePointRestoreSession(
	additional_data = {
			"site_restore_artifacts@delta" : [
				{
						"restore_point" : {
								"id" : "1b014d8c-71fe-4d00-a01a-31850bc5b32c",
						},
						"destination_type" : "new",
				},
				{
						"restore_point" : {
								"id" : "2b014d8c-71fe-4d00-a01a-31850bc5b32",
						},
						"destination_type" : "new",
				},
				{
						"restore_point" : {
								"id" : "3b014d8c-71fe-4d00-a01a-31850bc5b32c",
						},
						"destination_type" : "new",
				},
				{
						"restore_point" : {
								"id" : "4b014d8c-71fe-4d00-a01a-31850bc5b32c",
						},
						"destination_type" : "new",
				},
				{
						"@removed" : {
								"reason" : "changed",
						},
						"id" : "959ba739-70b5-43c4-8c90-b2c22014f18a",
				},
				{
						"@removed" : {
								"reason" : "changed",
						},
						"id" : "959ba739-70b5-43c4-8c90-b2c22014f18b",
				},
				{
						"@removed" : {
								"reason" : "changed",
						},
						"id" : "959ba739-70b5-43c4-8c90-b2c22014f18c",
				},
			],
	}
)

result = await graph_client.solutions.backup_restore.share_point_restore_sessions.by_share_point_restore_session_id('sharePointRestoreSession-id').patch(request_body)


```