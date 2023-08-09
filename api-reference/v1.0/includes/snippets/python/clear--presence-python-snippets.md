---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ClearPresencePostRequestBody()
request_body.session_id = '22553876-f5ab-4529-bffb-cfe50aa89f87'




await client.users.by_user_id('user-id').presence.clear_presence.post(request_body = request_body)


```