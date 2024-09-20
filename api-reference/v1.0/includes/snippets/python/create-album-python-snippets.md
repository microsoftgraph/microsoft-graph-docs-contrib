---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.drive_item import DriveItem
from msgraph.generated.models.bundle import Bundle
from msgraph.generated.models.album import Album
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DriveItem(
	name = "My Day at the Beach",
	bundle = Bundle(
		album = Album(
		),
	),
	children = [
		DriveItem(
			id = "1234asdf",
		),
	],
	additional_data = {
			"@microsoft_graph_conflict_behavior" : "rename",
	}
)

result = await graph_client.drives.by_drive_id('drive-id').bundles.post(request_body)


```