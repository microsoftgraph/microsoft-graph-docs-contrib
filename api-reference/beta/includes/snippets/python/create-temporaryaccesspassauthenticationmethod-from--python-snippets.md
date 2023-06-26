---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TemporaryAccessPassAuthenticationMethod()
request_body.startDateTime = DateTime('2022-06-05T00:00:00.000Z')

request_body.LifetimeInMinutes = 60

request_body.is_usable_once = False




result = await client.users.by_user_id('user-id').authentication.temporary_acces_pas_methods.post(request_body = request_body)


```