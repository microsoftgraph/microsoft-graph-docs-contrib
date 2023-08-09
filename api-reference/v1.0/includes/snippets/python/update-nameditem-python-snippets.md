---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = WorkbookNamedItem()
request_body.type = 'type-value'

request_body.scope = 'scope-value'

request_body.comment = 'comment-value'

value = Json()

request_body.value = value
request_body.visible = True




result = await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').workbook.names.by_name_id('workbookNamedItem-id').patch(request_body = request_body)


```