---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = RestorePostRequestBody()
parent_reference = ItemReference()
parent_reference.id = 'String'


request_body.parent_reference = parent_reference
request_body.name = 'String'




result = await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').restore.post(request_body = request_body)


```