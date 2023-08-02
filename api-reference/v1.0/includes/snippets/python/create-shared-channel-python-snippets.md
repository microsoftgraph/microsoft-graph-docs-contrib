---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Channel()
request_body.display_name = 'My First Shared Channel'

request_body.description = 'This is my first shared channel'

request_body.membershiptype(ChannelMembershipType.Shared('channelmembershiptype.shared'))

members_conversation_member1 = AadUserConversationMember()
members_conversation_member1.@odata_type = '#microsoft.graph.aadUserConversationMember'

members_conversation_member1.Roles(['owner', ])

additional_data = [
'user@odata_bind' => 'https://graph.microsoft.com/v1.0/users(\'7640023f-fe43-573f-9ff4-84a9efe4acd6\')', 
];
members_conversation_member1.additional_data(additional_data)



membersArray []= membersConversationMember1;
request_body.members(membersArray)





result = await client.teams.by_team_id('team-id').channels.post(request_body = request_body)


```