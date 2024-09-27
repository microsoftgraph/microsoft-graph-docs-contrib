---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.exchange_restore_session import ExchangeRestoreSession
from msgraph.generated.models.mailbox_restore_artifact import MailboxRestoreArtifact
from msgraph.generated.models.restore_point import RestorePoint
from msgraph.generated.models.destination_type import DestinationType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ExchangeRestoreSession(
	mailbox_restore_artifacts = [
		MailboxRestoreArtifact(
			restore_point = RestorePoint(
				additional_data = {
						"@odata_id" : "1f1fccc3-a642-4f61-bf49-f37b9a888279",
				}
			),
			destination_type = DestinationType.InPlace,
		),
		MailboxRestoreArtifact(
			restore_point = RestorePoint(
				additional_data = {
						"@odata_id" : "1f1fccc3-a642-4f61-bf49-f37b9a888280",
				}
			),
			destination_type = DestinationType.InPlace,
		),
	],
)

result = await graph_client.solutions.backup_restore.exchange_restore_sessions.post(request_body)


```