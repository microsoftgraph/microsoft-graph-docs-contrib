---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.chats.by_chat_id('chat-id').pinned_messages.by_pinned_chat_message_info_id('pinnedChatMessageInfo-id').delete()


```