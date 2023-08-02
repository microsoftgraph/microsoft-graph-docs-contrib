---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CopyPostRequestBody()
parent_reference = ItemReference()
parent_reference.drive_id = '6F7D00BF-FC4D-4E62-9769-6AEA81F3A21B'

parent_reference.id = 'DCD0D3AD-8989-4F23-A5A2-2C086050513F'


request_body.parent_reference = parent_reference
request_body.name = 'contoso plan (copy).txt'




result = await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').copy.post(request_body = request_body)


```