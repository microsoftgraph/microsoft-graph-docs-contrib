---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ItemPhone()
request_body.type(PhoneType.Other('phonetype.other'))




result = await client.users.by_user_id('user-id').profile.phones.by_phone_id('itemPhone-id').patch(request_body = request_body)


```