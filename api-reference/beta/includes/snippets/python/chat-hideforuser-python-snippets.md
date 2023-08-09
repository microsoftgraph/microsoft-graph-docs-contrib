---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = HideForUserPostRequestBody()
user = TeamworkUserIdentity()
user.id = 'd864e79f-a516-4d0f-9fee-0eeb4d61fdc2'

additional_data = [
'tenant_id' => '2a690434-97d9-4eed-83a6-f5f13600199a', 
];
user.additional_data(additional_data)



request_body.user = user



await client.chats.by_chat_id('chat-id').hide_for_user.post(request_body = request_body)


```