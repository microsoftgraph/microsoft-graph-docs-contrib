---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ItemAddress()
request_body.allowedaudiences(AllowedAudiences.Me('allowedaudiences.me'))

request_body.display_name = 'Secret Hideout'




result = await client.users.by_user_id('user-id').profile.addresses.by_addresse_id('itemAddress-id').patch(request_body = request_body)


```