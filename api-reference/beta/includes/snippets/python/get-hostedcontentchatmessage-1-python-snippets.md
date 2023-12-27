---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.chats.by_chat_id('chat-id').messages.by_chat_message_id('chatMessage-id').hosted_contents.by_chat_message_hosted_content_id('chatMessageHostedContent-id').get()


```