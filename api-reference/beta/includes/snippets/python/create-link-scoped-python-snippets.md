---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CreateLinkPostRequestBody()
request_body.type = 'edit'

request_body.scope = 'organization'




result = await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').create_link.post(request_body = request_body)


```