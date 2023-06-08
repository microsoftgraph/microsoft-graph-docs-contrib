---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DriveItem()
parent_reference = ItemReference()
parent_reference.id = '{new-parent-folder-id}'


request_body.parent_reference = parent_reference
request_body.name = 'new-item-name.txt'




result = await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').patch(request_body = request_body)


```