---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AddPostRequestBody()
request_body.name = 'name-value'




result = await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').workbook.worksheets.add.post(request_body = request_body)


```