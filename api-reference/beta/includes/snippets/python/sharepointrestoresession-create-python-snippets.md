---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.share_point_restore_session import SharePointRestoreSession
from msgraph_beta.generated.models.site_restore_artifact import SiteRestoreArtifact
from msgraph_beta.generated.models.restore_point import RestorePoint
from msgraph_beta.generated.models.destination_type import DestinationType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SharePointRestoreSession(
	site_restore_artifacts = [
		SiteRestoreArtifact(
			restore_point = RestorePoint(
				id = "1f1fccc3-a642-4f61-bf49-f37b9a888279",
			),
			destination_type = DestinationType.InPlace,
		),
		SiteRestoreArtifact(
			restore_point = RestorePoint(
				id = "1f1fccc3-a642-4f61-bf49-f37b9a888280",
			),
			destination_type = DestinationType.InPlace,
		),
	],
)

result = await graph_client.solutions.backup_restore.share_point_restore_sessions.post(request_body)


```