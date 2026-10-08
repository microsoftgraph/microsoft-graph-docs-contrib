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
			"granular_site_restore_artifacts@delta" : [
				{
						"browse_session_id" : "m_RtZ8BiiUXOK69cuN6gwubfm9_yeVlDg8s6hci01_cVOAE",
						"id" : "f3846f8d-80a6-4480-ae20-5966ebdf2009,26380145-c085-4772-b5ef-94de6bc9447e,3be2f282-276a-4a1a-8db0-8bf0849df84d,8d1ba53f-986a-409f-bf90-3bf55dbd7526",
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

result = await graph_client.solutions.backup_restore.share_point_restore_sessions.by_share_point_restore_session_id('sharePointRestoreSession-id').patch(request_body)


```