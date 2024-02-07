---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = CheckinPostRequestBody(
	comment = "Updating the latest guidelines",
)

await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').checkin.post(request_body)


```