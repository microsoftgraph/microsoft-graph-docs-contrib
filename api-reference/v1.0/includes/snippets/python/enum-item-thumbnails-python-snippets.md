---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').thumbnails.get()


```