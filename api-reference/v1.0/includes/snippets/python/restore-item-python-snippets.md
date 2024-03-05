---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.restore_post_request_body import RestorePostRequestBody
from msgraph.generated.models.item_reference import ItemReference

graph_client = GraphServiceClient(credentials, scopes)

request_body = RestorePostRequestBody(
	parent_reference = ItemReference(
		id = "String",
	),
	name = "String",
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').restore.post(request_body)


```