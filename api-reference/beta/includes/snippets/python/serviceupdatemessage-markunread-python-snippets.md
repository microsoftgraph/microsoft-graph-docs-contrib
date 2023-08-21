---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = MarkUnreadPostRequestBody()
request_body.MessageIds(['MC172851', 'MC167983', ])




result = await client.admin.service_announcement.messages.mark_unread.post(request_body = request_body)


```