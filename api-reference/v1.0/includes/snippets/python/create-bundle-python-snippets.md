---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = DriveItem(
	name = "Just some files",
	bundle = Bundle(
	),
	children = [
		DriveItem(
			id = "1234asdf",
		),
		DriveItem(
			id = "1234qwerty",
		),
	],
	additional_data = {
			"@microsoft_graph_conflict_behavior" : "rename",
	}
)

result = await graph_client.drives.by_drive_id('drive-id').bundles.post(request_body)


```