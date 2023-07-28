---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PinnedChatMessageInfo()
additional_data = [
'message@odata_bind' => 'https://graph.microsoft.com/v1.0/chats/19:2da4c29f6d7041eca70b638b43d45437@thread.v2/messages/1616964509832', 
];
request_body.additional_data(additional_data)





result = await client.chats.by_chat_id('chat-id').pinned_messages.post(request_body = request_body)


```