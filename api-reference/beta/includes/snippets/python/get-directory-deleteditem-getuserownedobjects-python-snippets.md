---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = GetUserOwnedObjectsPostRequestBody()
request_body.user_id = '55ac777c-109e-4022-b58c-470c8fcb6892'

request_body.type = 'Group'




result = await client.directory.deleted_items.get_user_owned_objects.post(request_body = request_body)


```