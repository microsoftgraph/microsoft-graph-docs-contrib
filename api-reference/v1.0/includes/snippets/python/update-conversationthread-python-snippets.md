---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ConversationThread()
request_body.is_locked = True




result = await client.groups.by_group_id('group-id').threads.by_thread_id('conversationThread-id').patch(request_body = request_body)


```