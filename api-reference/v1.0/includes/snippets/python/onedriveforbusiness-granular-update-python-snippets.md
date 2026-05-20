---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.one_drive_for_business_restore_session import OneDriveForBusinessRestoreSession
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OneDriveForBusinessRestoreSession(
	additional_data = {
			"granular_drive_restore_artifacts@delta" : [
				{
						"browse_session_id" : "m_RtZ8BiiUXOK69cuN6gwubfm9_yeVlDg8s6hci01_cVOAE",
						"item_key" : "a535851e-9fc6-4eb1-90ab-2955fd9117b5,2a8b7eaf-092a-4561-a25a-998ad2e5142e,38eec3f1-b879-44a6-8ae6-05bd46ed4b3d,ce66019f-cdf9-4575-aa81-de3aabe844a2",
				},
				{
						"@removed" : {
								"reason" : "changed",
						},
						"id" : "a535851e-9fc6-4eb1-90ab-2955fd9117b5,2a8b7eaf-092a-4561-a25a-998ad2e5142e,38eec3f1-b879-44a6-8ae6-05bd46ed4b3d,ce66019f-cdf9-4575-aa81-de3aabe844a2",
				},
			],
	}
)

result = await graph_client.solutions.backup_restore.one_drive_for_business_restore_sessions.by_one_drive_for_business_restore_session_id('oneDriveForBusinessRestoreSession-id').patch(request_body)


```