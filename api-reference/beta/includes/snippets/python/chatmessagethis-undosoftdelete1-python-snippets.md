---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.users.by_user_id('user-id').chats.by_chat_id('chat-id').messages.by_chat_message_id('chatMessage-id').undo_soft_delete.post()


```