---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SetUserPreferredPresencePostRequestBody()
request_body.availability = 'DoNotDisturb'

request_body.activity = 'DoNotDisturb'

request_body.expirationduration =  \DateInterval('PT8H')




await client.users.by_user_id('user-id').presence.set_user_preferred_presence.post(request_body = request_body)


```