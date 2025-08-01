---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.drives.item.items.item.restore.restore_post_request_body import RestorePostRequestBody
from msgraph.generated.models.item_reference import ItemReference
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RestorePostRequestBody(
	parent_reference = ItemReference(
		id = "String",
	),
	name = "String",
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').restore.post(request_body)


```