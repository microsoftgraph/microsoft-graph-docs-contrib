---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AadUserConversationMember()
request_body.@odata_type = '#microsoft.graph.aadUserConversationMember'

request_body.Roles(['owner', ])

request_body.tenant_id = '4dc1fe35-8ac6-4f0d-904a-7ebcd364bea1'

additional_data = [
'user@odata_bind' => 'https://graph.microsoft.com/v1.0/users/82af01c5-f7cc-4a2e-a728-3a5df21afd9d', 
];
request_body.additional_data(additional_data)





result = await client.chats.by_chat_id('chat-id').members.post(request_body = request_body)


```