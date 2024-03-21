---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.workbook_comment_reply import WorkbookCommentReply

graph_client = GraphServiceClient(credentials, scopes)

request_body = WorkbookCommentReply(
	content = "This is my reply to the comment.",
	content_type = "plain",
)

result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.comments.by_workbook_comment_id('workbookComment-id').replies.post(request_body)


```