---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.drives.item.items.item.workbook.names.item.range.delete.delete_post_request_body import DeletePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeletePostRequestBody(
	shift = "shift-value",
)

await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.names.by_workbook_named_item_id('workbookNamedItem-id').range.delete.post(request_body)


```