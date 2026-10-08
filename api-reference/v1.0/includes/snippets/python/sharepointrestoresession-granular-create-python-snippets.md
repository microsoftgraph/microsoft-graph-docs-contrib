---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.share_point_restore_session import SharePointRestoreSession
from msgraph.generated.models.granular_site_restore_artifact import GranularSiteRestoreArtifact
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SharePointRestoreSession(
	granular_site_restore_artifacts = [
		GranularSiteRestoreArtifact(
			browse_session_id = "eJxVjEEKwjAQRfc80xeIleluFd2HRkZCgAIEu9CO3aUv78W4H_q_NgQY2gSJHT8IoOhrl5AzosZGBk6",
			id = "a535851e-9fc6-4eb1-90ab-2955fd9117b5,2a8b7eaf-092a-4561-a25a-998ad2e5142e,38eec3f1-b879-44a6-8ae6-05bd46ed4b3d,ce66019f-cdf9-4575-aa81-de3aabe844a2",
		),
		GranularSiteRestoreArtifact(
			browse_session_id = "eJxVjEEKwjAQRfc80xeIleluFd2HRkZCgAIEu9CO3aUv78W4H_q_NgQY2gSJHT8IoOhrl5AzosZGBk6",
			id = "b535851e-9fc6-4eb1-90ab-2955fd9117b5,2a8b7eaf-092a-4561-a25a-998ad2e5142e,38eec3f1-b879-44a6-8ae6-05bd46ed4b3d,ce66019f-cdf9-4575-aa81-de3aabe844a2",
		),
	],
)

result = await graph_client.solutions.backup_restore.share_point_restore_sessions.post(request_body)


```