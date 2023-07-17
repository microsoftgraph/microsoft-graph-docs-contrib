---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DriveItem()
request_body.name = 'Shared legal agreements'




result = await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').patch(request_body = request_body)


```