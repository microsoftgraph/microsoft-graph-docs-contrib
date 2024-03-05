---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.chats.by_chat_id('chat-id').members.by_conversation_member_id('conversationMember-id').get()


```