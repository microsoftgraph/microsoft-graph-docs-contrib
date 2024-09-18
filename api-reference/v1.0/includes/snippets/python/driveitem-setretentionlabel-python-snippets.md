---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.item_retention_label import ItemRetentionLabel

graph_client = GraphServiceClient(credentials, scopes)

request_body = ItemRetentionLabel(
	name = "Retention label for Contracts",
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').retention_label.patch(request_body)


```