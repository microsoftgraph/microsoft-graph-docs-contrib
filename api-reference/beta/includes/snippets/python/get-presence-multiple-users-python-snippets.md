---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = GetPresencesByUserIdPostRequestBody()
request_body.Ids(['fa8bf3dc-eca7-46b7-bad1-db199b62afc3', '66825e03-7ef5-42da-9069-724602c31f6b', ])




result = await client.communications.get_presence_by_user_id.post(request_body = request_body)


```