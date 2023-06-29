---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ClearUserPreferredPresencePostRequestBody()



await client.users.by_user_id('user-id').presence.clear_user_preferred_presence.post(request_body = request_body)


```