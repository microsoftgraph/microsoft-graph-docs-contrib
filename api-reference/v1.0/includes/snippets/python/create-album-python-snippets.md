---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.drive_item import DriveItem
from msgraph.generated.models.bundle import Bundle
from msgraph.generated.models.album import Album

graph_client = GraphServiceClient(credentials, scopes)

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