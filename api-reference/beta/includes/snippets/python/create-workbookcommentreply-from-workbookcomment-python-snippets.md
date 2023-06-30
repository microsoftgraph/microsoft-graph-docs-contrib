---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = WorkbookCommentReply()
request_body.content = 'This is my reply to the comment.'

request_body.content_type = 'plain'




result = await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').workbook.comments.by_comment_id('workbookComment-id').replies.post(request_body = request_body)


```