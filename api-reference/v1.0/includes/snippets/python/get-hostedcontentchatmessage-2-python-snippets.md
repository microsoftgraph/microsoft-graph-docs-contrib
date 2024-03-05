---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.chats.by_chat_id('chat-id').messages.by_chat_message_id('chatMessage-id').hosted_contents.by_chat_message_hosted_content_id('chatMessageHostedContent-id').content.get()


```