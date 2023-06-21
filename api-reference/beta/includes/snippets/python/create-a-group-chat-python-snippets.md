---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Chat()
request_body.chattype(ChatType.Group('chattype.group'))

request_body.topic = 'Group chat title'

members_conversation_member1 = AadUserConversationMember()
members_conversation_member1.@odata_type = '#microsoft.graph.aadUserConversationMember'

members_conversation_member1.Roles(['owner', ])

additional_data = [
'user@odata_bind' => 'https://graph.microsoft.com/beta/users(\'8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca\')', 
];
members_conversation_member1.additional_data(additional_data)



membersArray []= membersConversationMember1;
members_conversation_member2 = AadUserConversationMember()
members_conversation_member2.@odata_type = '#microsoft.graph.aadUserConversationMember'

members_conversation_member2.Roles(['owner', ])

additional_data = [
'user@odata_bind' => 'https://graph.microsoft.com/beta/users(\'82fe7758-5bb3-4f0d-a43f-e555fd399c6f\')', 
];
members_conversation_member2.additional_data(additional_data)



membersArray []= membersConversationMember2;
members_conversation_member3 = AadUserConversationMember()
members_conversation_member3.@odata_type = '#microsoft.graph.aadUserConversationMember'

members_conversation_member3.Roles(['owner', ])

additional_data = [
'user@odata_bind' => 'https://graph.microsoft.com/beta/users(\'3626a173-f2bc-4883-bcf7-01514c3bfb82\')', 
];
members_conversation_member3.additional_data(additional_data)



membersArray []= membersConversationMember3;
request_body.members(membersArray)





result = await client.chats.post(request_body = request_body)


```