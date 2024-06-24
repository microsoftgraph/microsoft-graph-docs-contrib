---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.drives.item.items.item.workbook.tables.item.rows.add.add_post_request_body import AddPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = AddPostRequestBody(
	index = 5,
	values = [
		[
			1,
			2,
			3,
		],
		[
			4,
			5,
			6,
		],
	],
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.tables.by_workbook_table_id('workbookTable-id').rows.add.post(request_body)


```