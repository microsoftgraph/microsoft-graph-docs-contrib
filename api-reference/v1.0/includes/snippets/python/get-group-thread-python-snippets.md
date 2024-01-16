---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.groups.by_group_id('group-id').threads.by_conversation_thread_id('conversationThread-id').get()


```