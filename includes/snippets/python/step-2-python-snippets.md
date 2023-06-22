---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Chat()
request_body.chattype(ChatType.Group('chattype.group'))

members_conversation_member1 = AadUserConversationMember()
members_conversation_member1.@odata_type = '#microsoft.graph.aadUserConversationMember'

members_conversation_member1.Roles(['owner', ])

additional_data = [
'user@odata_bind' => 'https://graph.microsoft.com/v1.0/users(\'adams@contoso.com\')', 
];
members_conversation_member1.additional_data(additional_data)



membersArray []= membersConversationMember1;
members_conversation_member2 = AadUserConversationMember()
members_conversation_member2.@odata_type = '#microsoft.graph.aadUserConversationMember'

members_conversation_member2.Roles(['owner', ])

additional_data = [
'user@odata_bind' => 'https://graph.microsoft.com/v1.0/users(\'gradyA@contoso.com\')', 
];
members_conversation_member2.additional_data(additional_data)



membersArray []= membersConversationMember2;
members_conversation_member3 = AadUserConversationMember()
members_conversation_member3.@odata_type = '#microsoft.graph.aadUserConversationMember'

members_conversation_member3.Roles(['owner', ])

additional_data = [
'user@odata_bind' => 'https://graph.microsoft.com/v1.0/users(\'4562bcc8-c436-4f95-b7c0-4f8ce89dca5e\')', 
];
members_conversation_member3.additional_data(additional_data)



membersArray []= membersConversationMember3;
request_body.members(membersArray)





result = await client.chats.post(request_body = request_body)


```